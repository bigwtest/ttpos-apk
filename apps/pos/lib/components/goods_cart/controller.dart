part of 'index.dart';

class GoodsCartController extends GetxController {
  final String _tag;
  final void Function(int saleBillUuid, int saleOrderUuid)? onCheckout;
  final void Function()? onBack;
  final Future<bool> Function()? onUnlock;

  GoodsCartController({
    String tag = "",
    required this.onCheckout,
    required this.onBack,
    required this.onUnlock,
  }) : _tag = tag;

  // 初始化订单组件
  late final GoodsCartOrderView orders = GoodsCartOrderView(
    tag: _tag,
    onCheckout: onCheckout,
    onTapEvent: _onTapEvent,
    onBack: onBack,
    onUnlock: onUnlock,
  );

  // 购物车数据
  Rx<ResponseCart?> get cartInfo => orders.controller.cartInfo;

  // 选中的产品
  final Rx<ResponseCartProduct?> currentProduct = Rx<ResponseCartProduct?>(null);

  // 用于存储 ever 订阅，以便在 onClose 中销毁
  final List<Worker> _workers = [];

  @override
  void onInit() {
    super.onInit();
    // 监听购物车数据变化
    _workers.add(
      ever(orders.controller.cartInfo, (cart) {
        currentProduct.value = orders.controller.getCurrentProduct();
      }),
    );
    _workers.add(
      ever(orders.controller.getCurrentSelectedProductUuid, (uuid) {
        currentProduct.value = orders.controller.getCurrentProduct();
      }),
    );
  }

  @override
  void onClose() {
    // 销毁所有 ever 订阅
    for (final worker in _workers) {
      worker.dispose();
    }
    _workers.clear();
    super.onClose();
  }

  // NOTE: 订单的点击事件
  Future<void> _onTapEvent(String type) async {
    // 获取订单类型
    final isDeskOrder = cartInfo.value?.isDeskOrder ?? false;
    OrderOperationController operationAPI = OrderOperationController(
      orderType: isDeskOrder ? OrderOperationType.desk : OrderOperationType.instant,
    );
    // 加钟事件
    if (type == "clock") {
      await showClockDialog(
        onConfirm: (List<int> ids) async {
          if (ids.isEmpty) return false;
          final cart = await operationAPI.addClock(
            saleBillUuid: cartInfo.value?.saleBillUuid ?? 0,
            saleOrderUuid: orders.controller.getCurrentSelectedSaleOrderUuid.value,
            delayUuids: ids,
          );
          if (cart != null) {
            orders.controller.setCartInfo(cart: cart);
            return true;
          }
          return false;
        },
      );
    }
  }

  // NOTE: 大按钮行事件处理
  Future<bool> _onActionTapEvent(
    action.ActionCommonType type,
    Map<String, dynamic>? context,
    void Function()? onBack,
    void Function()? adjustBuffetCallback,
  ) async {
    // 没有选中商品
    if (currentProduct.value == null &&
        type != action.ActionCommonType.takeout &&
        type != action.ActionCommonType.pickOrder &&
        type != action.ActionCommonType.hangingOrder &&
        type != action.ActionCommonType.adjustPeople &&
        type != action.ActionCommonType.adjustBuffet &&
        type != action.ActionCommonType.turntable &&
        type != action.ActionCommonType.orderCancel &&
        type != action.ActionCommonType.parallelPlatform &&
        type != action.ActionCommonType.sendingKitchen &&
        type != action.ActionCommonType.discounts) {
      DialogManager.showToast('请选择商品'.tr);
      return false;
    }

    // 获取订单类型
    final isDeskOrder = cartInfo.value?.isDeskOrder ?? false;
    OrderOperationController operationAPI = OrderOperationController(
      orderType: isDeskOrder ? OrderOperationType.desk : OrderOperationType.instant,
    );

    // 获取订单参数
    final params = {
      'billUuid': cartInfo.value?.saleBillUuid ?? 0,
      'orderUuid': orders.controller.getCurrentSelectedSaleOrderUuid.value,
      'productUuid': currentProduct.value?.uuid ?? 0,
    };

    // 执行事件
    switch (type) {
      case action.ActionCommonType.otherDialog:
      case action.ActionCommonType.returns:
        return true;

      // NOTE: 打包
      case action.ActionCommonType.takeout:
        final ResponseCart? cart = await operationAPI.takeout(
          saleBillUuid: params['billUuid']!,
          takeout: context!['takeout'],
        );
        if (cart != null) {
          orders.controller.setCartInfo(cart: cart);
          return true;
        }
        return false;

      // NOTE: 删除
      case action.ActionCommonType.delete:
        DialogManager.showConfirmDialog(
          message: currentProduct.value?.isMust == true ? "此商品为必点商品，是否删除此商品？".tr : "是否删除此商品？".tr,
          onConfirm: () async {
            final ResponseCart? cart = await operationAPI.deleteProduct(
              saleBillUuid: params['billUuid']!,
              saleOrderUuid: params['orderUuid']!,
              orderProductUuid: params['productUuid']!,
            );
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart);
              return true;
            }
            return false;
          },
        );

        return false;

      // NOTE: 价格调整功能
      case action.ActionCommonType.price:
        Get.dialog(
          barrierDismissible: false,
          DismissKeyboardDialog(
            child: OrderPriceView(
              productName: currentProduct.value?.localeName.translate ?? '',
              // price: currentProduct.value?.price.toSafetyString() ?? '',
              onConfirm: (price) async {
                final ResponseCart? cart = await operationAPI.priceAdjustment(
                  saleBillUuid: params['billUuid']!,
                  saleOrderUuid: params['orderUuid']!,
                  orderProductUuid: params['productUuid']!,
                  price: price,
                );
                if (cart != null) {
                  orders.controller.setCartInfo(cart: cart);
                  return true;
                }
                return false;
              },
            ),
          ),
        );
        return false;

      // NOTE: 挂单
      case action.ActionCommonType.hangingOrder:
        DialogManager.showConfirmDialog(
          message: '是否将商品挂单？'.tr,
          onConfirm: () async {
            final ResponseCart? cart = await operationAPI.hangOrder(saleBillUuid: params['billUuid']!);
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart, cancelEdit: true);
              return true;
            }
            return false;
          },
        );
        return false;

      // NOTE: 取单
      case action.ActionCommonType.pickOrder:
        final CustomDrawerController customDrawerController = Get.find<CustomDrawerController>();
        customDrawerController.openEndDrawer(
          'pickOrder',
          {
            "pickOrderCallBack": (cart) {
              orders.controller.setCartInfo(cart: cart);
            },
          },
        );
        return true;

      // NOTE: 整单取消
      case action.ActionCommonType.orderCancel:
        await operationAPI.cancelOrder(
          saleBillUuid: params['billUuid']!,
          products: orders.controller.getSentKitchenProducts(),
          callback: (ResponseCart? cart) {
            if (cart != null) {
              if (isDeskOrder) {
                orders.controller.setCartInfo(cart: null, cancelEdit: true);
                if (onBack != null) {
                  onBack();
                }
              } else {
                orders.controller.setCartInfo(cart: cart, cancelEdit: true);
              }
            }
          },
        );
        return false;

      // NOTE: 送厨
      case action.ActionCommonType.sendingKitchen:
        await operationAPI.sendKitchen(
          saleBillUuid: params['billUuid']!,
          saleOrderUuid: params['orderUuid']!,
          callback: (ResponseCart? cart) {
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart);
            }
            return null;
          },
        );
        return false;

      // NOTE: 退菜
      case action.ActionCommonType.returningDishes:
        await operationAPI.returningDishes(
          saleBillUuid: params['billUuid']!,
          saleOrderUuid: params['orderUuid']!,
          orderProduct: currentProduct.value!,
          callback: (ResponseCart? cart) {
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart);
            }
          },
        );
        return false;

      // NOTE: 取消退菜
      case action.ActionCommonType.cancelReturningDishes:
        DialogManager.showConfirmDialog(
          message: "是否取消退菜？".tr,
          onConfirm: () async {
            ResponseCart? cart = await operationAPI.cancelReturningDishes(
              saleBillUuid: params['billUuid']!,
              saleOrderUuid: params['orderUuid']!,
              saleOrderProductUuid: params['productUuid']!,
            );
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart);
              return true;
            }
            return false;
          },
        );

        return false;

      // NOTE: 备注
      case action.ActionCommonType.remarks:
        Get.dialog(
          barrierDismissible: false,
          DismissKeyboardDialog(
            child: OrderRemarkView(
              productName: currentProduct.value!.localeName.translate,
              remark: currentProduct.value!.remark,
              onConfirm: (String remark) async {
                ResponseCart? cart = await operationAPI.remarks(
                  saleBillUuid: params['billUuid']!,
                  saleOrderUuid: params['orderUuid']!,
                  orderProductUuid: params['productUuid']!,
                  remark: remark,
                );
                if (cart != null) {
                  orders.controller.setCartInfo(cart: cart);
                  return true;
                }
                return false;
              },
            ),
          ),
        );
        return false;

      // NOTE: 赠菜
      case action.ActionCommonType.giftDishes:
        await operationAPI.giftDishes(
          saleBillUuid: params['billUuid']!,
          saleOrderUuid: params['orderUuid']!,
          orderProduct: currentProduct.value!,
          callback: (ResponseCart? cart) {
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart);
            }
          },
        );
        return false;

      // NOTE: 取消赠菜
      case action.ActionCommonType.cancelGiftDishes:
        DialogManager.showConfirmDialog(
          message: "是否取消赠菜？".tr,
          onConfirm: () async {
            ResponseCart? cart = await operationAPI.cancelGiftDishes(
              saleBillUuid: params['billUuid']!,
              saleOrderUuid: params['orderUuid']!,
              saleOrderProductUuid: params['productUuid']!,
            );
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart);
              return true;
            }
            return false;
          },
        );
        return false;

      // NOTE: 调整人数
      case action.ActionCommonType.adjustPeople:
        await Get.dialog<bool>(
          DismissKeyboardDialog(
            child: DeskOpenDialog(
              deskUuid: params['billUuid']!,
              deskNo: cartInfo.value?.desk?.deskNo ?? '',
              isShowRemark: false,
              isBuffetOrNot: false,
              isBuffetListSelectable: false,
              isShowIsBuffetOrNotHeader: false,
              onConfirm: (DeskOpenModel openModel) async {
                // 请求接口
                ResponseCart? cart = await operationAPI.adjustPeople(
                  saleBillUuid: params['billUuid']!,
                  mealNum: openModel.notBuffetCustomerCount,
                );
                if (cart != null) {
                  orders.controller.setCartInfo(cart: cart);
                  return true;
                }
                return false;
              },
            ),
          ),
          barrierDismissible: false,
        );
        return true;

      // NOTE: 调整自助餐
      case action.ActionCommonType.adjustBuffet:
        await operationAPI.adjustBuffet(
          billUuid: cartInfo.value?.saleBillUuid ?? 0,
          buffets: orders.controller.getBuffets(),
          buffetProduct: orders.controller.getBuffetProduct(),
          callback: (ResponseCart? cart) {
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart);
              adjustBuffetCallback?.call();
            }
          },
        );
        return true;

      // NOTE: 转台
      case action.ActionCommonType.turntable:
        Get.find<CustomDrawerController>().openEndDrawer(
          'turntable',
          {
            "deskNo": cartInfo.value?.desk?.deskNo ?? '',
            "confirmCallback": (int deskUuid) async {
              ResponseCart? cart = await operationAPI.changeDesk(
                saleBillUuid: params['billUuid']!,
                saleOrderUuid: params['orderUuid']!,
                deskUuid: deskUuid,
              );
              if (cart != null) {
                orders.controller.setCartInfo(cart: cart);
                return true;
              }
              return false;
            },
          },
        );
        return true;

      // NOTE: 并台
      case action.ActionCommonType.parallelPlatform:
        Get.find<CustomDrawerController>().openEndDrawer(
          'parallelPlatform',
          {
            "deskUuid": cartInfo.value?.desk?.uuid ?? 0,
            "confirmCallback": (List<int> deskUuids) async {
              // 验证是否存在优惠折扣
              if (orders.controller.isDiscount) {
                bool resetDiscount = await DialogManager.showConfirmDialog(
                  message: "优惠折扣将失效，确定后需重新设置优惠折扣".tr,
                  onConfirm: () async {
                    return true;
                  },
                );
                if (!resetDiscount) return false;
              }
              // 合并台
              ResponseOrderMergeDesk? response = await operationAPI.mergeDesk(
                saleBillUuid: params['billUuid']!,
                deskUuids: deskUuids,
              );
              if (response?.shopCart != null) {
                orders.controller.setCartInfo(cart: response?.shopCart);
                return true;
              }
              return false;
            },
          },
        );
        return true;

      // NOTE: 转菜
      case action.ActionCommonType.transferDishes:
        Get.find<CustomDrawerController>().openEndDrawer('transferDishes', {
          "deskUuid": cartInfo.value?.desk?.uuid ?? 0,
          "confirmCallback": (int deskUuid) async {
            ResponseCart? cart = await operationAPI.changeProductDesk(
              saleBillUuid: params['billUuid']!,
              saleOrderUuid: params['orderUuid']!,
              saleOrderProductUuid: params['productUuid']!,
              deskUuid: deskUuid,
            );
            if (cart != null) {
              orders.controller.setCartInfo(cart: cart);
              return true;
            }
            return false;
          },
        });
        return true;

      // NOTE: 折扣
      case action.ActionCommonType.discounts:
        final controller = Get.find<BaseInfoController>();
        final currentOrder = orders.controller.getCurrentOrder();
        Get.dialog(
          barrierDismissible: false,
          DismissKeyboardDialog(
            child: DeskDiscountsView(
              initData: DiscountConfirmParamsModel(
                // 折扣方式 1: 改价, 2: 折扣, 3: 抹零, 4: 免单
                discountMethod: currentOrder?.zeroRule != 0
                    ? 3
                    : currentOrder?.customDiscountRate != 1
                        ? 2
                        : 1,
                discountStr: controller.discountTypeText == "%"
                    ? ((currentOrder?.customDiscountRate ?? 0) * 100).round().toString()
                    : ((1 - (currentOrder?.customDiscountRate ?? 0)) * 100).round().toString(), // 折扣
                zeroRule: currentOrder?.zeroRule, // 抹零类型
              ),
              price: orders.controller.getAmountInfo()?.amount,
              discountTypeText: controller.discountTypeText,
              showCancel: currentOrder?.isDiscount ?? false,
              autoDiscountMessage: currentOrder?.autoDiscountMessage,
              onReasons: () => OrderFreeOrGiftReasonAPI().getFreeOrGiftReasons(),
              onCancelDiscount: () async {
                ResponseCart? cart = await operationAPI.cancelDiscount(
                  saleBillUuid: params['billUuid']!,
                  saleOrderUuid: params['orderUuid']!,
                );
                if (cart != null) {
                  orders.controller.setCartInfo(cart: cart);
                  // 更新价格
                  Get.find<DeskDiscountsController>().updatePrice(
                    orders.controller.getAmountInfo()?.amount,
                  );
                  return true;
                }
                return false;
              },
              onConfirm: (data) async {
                // NOTE: 免单
                if (data.discountMethod == 4) {
                  return await freeOrder(params, data, onBack);
                } else {
                  // NOTE: 设置折扣
                  ResponseCart? cart = await operationAPI.discount(
                    saleBillUuid: params['billUuid']!,
                    saleOrderUuid: params['orderUuid']!,
                    discountType: controller.discountType,
                    param: data,
                  );
                  if (cart != null) {
                    orders.controller.setCartInfo(cart: cart);
                    return true;
                  }
                }
                return false;
              },
            ),
          ),
        );
        return true;
    }
  }

  // NOTE: 免单订单
  Future<bool> freeOrder(
    Map<String, dynamic> params,
    DiscountConfirmParamsModel confirmParam,
    VoidCallback? onBack, {
    bool? ignoreMust,
  }) async {
    // 获取订单类型
    final isDeskOrder = cartInfo.value?.isDeskOrder ?? false;
    OrderOperationController operationAPI = OrderOperationController(
      orderType: isDeskOrder ? OrderOperationType.desk : OrderOperationType.instant,
    );

    // 检查
    final (bool res, orderCheck, ErrorCode? errorCode) = await operationAPI.checkOrder(
      saleBillUuid: params['billUuid']!,
      saleOrderUuid: params['orderUuid']!,
      ignoreMust: ignoreMust ?? false,
    );

    //
    switch (errorCode) {
      case ErrorCode.orderCheckProductMust:
        if (!(ignoreMust ?? false)) {
          final isConfirm = await DialogManager.showOrderCheckDialog(
            message: ErrorCode.orderCheckProductMust.message,
            content: orderCheck?.productMustPlans?.list
                .map(
                  (item) => '${item.name} (${'少点'.tr}${item.needNum}${'份'.tr})',
                )
                .toList(),
          );
          if (!isConfirm) {
            return false;
          }
          return await freeOrder(params, confirmParam, onBack, ignoreMust: true);
        }
        break;
      case ErrorCode.orderCheckProductDown:
      case ErrorCode.orderCheckProductFlavorDown:
      case ErrorCode.orderCheckProductStockZero:
      case ErrorCode.orderCheckProductPriceChanged:
      case ErrorCode.orderCheckProductLimitOut:
        await DialogManager.showOrderCheckDialog(
          message: errorCode?.message.tr,
          content: DialogManager.getContent(orderCheck?.products?.list ?? []),
          showCancelButton: false,
        );
        return false;
      case ErrorCode.orderCheckFailed:
        final isConfirm = await DialogManager.showOrderCheckDialog(
          message: ErrorCode.orderCheckFailed.message.tr,
          content: DialogManager.getContent(orderCheck?.products?.list ?? []),
          onConfirm: () async {
            return await operationAPI.sendKitchen(
              saleBillUuid: params['billUuid']!,
              saleOrderUuid: params['orderUuid']!,
              isIgnoreMust: true,
              callback: (ResponseCart? cart) {
                if (cart != null) {
                  orders.controller.setCartInfo(cart: cart);
                }
                return null;
              },
            );
          },
        );
        if (!isConfirm) {
          return false;
        }
        break;
      default:
        if (res == false) {
          DialogManager.showToast(ErrorCode.unknownError.message.tr);
          return false;
        }
        break;
    }

    //
    final (bool isSuccess, PaymentFinish? info) = await operationAPI.free(
      saleBillUuid: params['billUuid']!,
      saleOrderUuid: params['orderUuid']!,
      reasonIds: confirmParam.freeReasons ?? [],
      reason: confirmParam.freeRemark ?? '',
    );
    if (isSuccess) {
      // 完成订单
      int restOrderCount = orders.controller.completeCurrentOrder(params['orderUuid']!);
      // 如果没有其他订单，关闭订单
      if (restOrderCount == 0 && isDeskOrder && onBack != null) {
        onBack();
      }
      // 添加延迟，1秒后显示对话框
      Future.delayed(Duration(milliseconds: 100), () {
        Get.dialog(
          name: 'FinishDialog',
          DismissKeyboardDialog(
            child: FinishView(
              shouldPayAmount: info?.amountInfo.orderAmount.toSafetyDouble() ?? 0,
              actualPayAmount: info?.amountInfo.payAmount.toSafetyDouble() ?? 0,
              changeAmount: info?.amountInfo.changeAmount.toSafetyDouble() ?? 0,
              payMethodNames: info?.payMethods.list.map((e) => e.name).toList() ?? [],
              onExitTap: () async {
                if (restOrderCount == 0) {
                  if (isDeskOrder) {
                    if (onBack != null) {
                      onBack();
                    }
                  } else {
                    orders.controller.setCartInfo(cart: null);
                    orders.controller.loadCartData(saleBillUuid: 0);
                  }
                }
                return true;
              },
              requestPrinterData: ({String? printLang}) async {
                final request = RespPrinterRequest(
                  printLang: printLang,
                  saleBillUuid: params['billUuid']!,
                  saleOrderUuid: params['orderUuid']!,
                );

                final options = ExtraRequestOptions(
                  showGlobalLoading: true,
                  showFailToast: true,
                  showSuccessToast: true,
                );
                return await (isDeskOrder
                    ? PrintAPI().printDeskPreCheckout(data: request, options: options)
                    : PrintAPI().printInstantPreCheckout(data: request, options: options));
              },
              requestInvoicePrinterData: ({InvoiceInfo? invoiceInfo, String? printLang}) async {
                final request = InvoicePrintRequest(
                  saleBillUuid: params['billUuid']!,
                  saleOrderUuid: params['orderUuid']!,
                  printLang: printLang,
                  companyAddr: invoiceInfo?.companyAddress,
                  companyName: invoiceInfo?.companyName,
                  companyPhone: invoiceInfo?.companyPhone ?? '',
                  companyTaxNumber: invoiceInfo?.companyTaxNumber,
                );

                final options = ExtraRequestOptions(
                  showGlobalLoading: true,
                  showFailToast: true,
                  showSuccessToast: true,
                );
                return await (isDeskOrder
                    ? PrintAPI().deskPrintInvoice(data: request, options: options)
                    : PrintAPI().instantPrintInvoice(data: request, options: options));
              },
            ),
          ),
          barrierDismissible: false,
        );
      });
      return true;
    }
    return false;
  }
}
