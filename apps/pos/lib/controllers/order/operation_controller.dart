// Package imports:
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/api/auth/auth_api.dart';
import 'package:pos/api/buffet/buffet_api.dart';
import 'package:pos/api/checkout/checkout_api.dart';
import 'package:pos/api/order/add_clock_api.dart';
import 'package:pos/api/order/adjust_buffet_api.dart';
import 'package:pos/api/order/cancel_api.dart';
import 'package:pos/api/order/cooking_api.dart';
import 'package:pos/api/order/delete_product_api.dart';
import 'package:pos/api/order/desk_change.dart';
import 'package:pos/api/order/desk_merge.dart';
import 'package:pos/api/order/discount_api.dart';
import 'package:pos/api/order/discount_cancel_api.dart';
import 'package:pos/api/order/free_api.dart';
import 'package:pos/api/order/free_or_gift_reason.dart';
import 'package:pos/api/order/gift_cancel_product_api.dart';
import 'package:pos/api/order/gift_product_api.dart';
import 'package:pos/api/order/hide_api.dart';
import 'package:pos/api/order/is_cell_close.dart';
import 'package:pos/api/order/move_product_api.dart';
import 'package:pos/api/order/order_member_list_api.dart';
import 'package:pos/api/order/population_api.dart';
import 'package:pos/api/order/price_product_api.dart';
import 'package:pos/api/order/product_change_desk.dart';
import 'package:pos/api/order/remark_product_api.dart';
import 'package:pos/api/order/return_reason.dart';
import 'package:pos/api/order/returning_cancel_product_api.dart';
import 'package:pos/api/order/returning_product_api.dart';
import 'package:pos/api/order/sale_order_delete.dart';
import 'package:pos/api/order/sale_order_delete_all.dart';
import 'package:pos/api/order/takeout_api.dart';
import 'package:pos/model/request/order/add_clock.dart';
import 'package:pos/model/request/order/adjust_buffet.dart';
import 'package:pos/model/request/order/gift_product.dart';
import 'package:pos/model/request/order/move_product.dart';
import 'package:pos/model/request/order/opt_product.dart';
import 'package:pos/model/request/order/price_product.dart';
import 'package:pos/model/request/order/remark_product.dart';
import 'package:pos/model/request/order/returning_product.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:pos/model/response/order/member.dart';
import 'package:pos/model/response/order/merge_desk.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/order/request/check.dart';
import 'package:ttpos_model/order/response/check.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/payment/response/finish.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/desks/views/open/dialog.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_cancel/desk_cancel_model.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_cancel/desk_cancel_view.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_model.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_gift_dishes/order_gift_dishes_view.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_return_dishes/order_return_dishes_view.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

enum OrderOperationType { instant, desk }

// 订单操作控制器
class OrderOperationController {
  OrderOperationController({required this.orderType});
  final OrderOperationType orderType;

  final ConfigController _configController = Get.find<ConfigController>();

  // NOTE: 打包
  Future<ResponseCart?> takeout({
    required int saleBillUuid,
    required bool takeout,
  }) async {
    ResponseCart? response;
    if (orderType == OrderOperationType.desk) {
      response = await OrderTakeoutAPI().desk(
        saleBillUuid: saleBillUuid,
        takeout: takeout,
      );
    } else {
      response = await OrderTakeoutAPI().instant(
        saleBillUuid: saleBillUuid,
        takeout: takeout,
      );
    }
    return response;
  }

  // NOTE: 删除商品
  Future deleteProduct({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int orderProductUuid,
  }) async {
    ResponseCart? response;
    if (orderType == OrderOperationType.desk) {
      response = await OrderDeleteProductAPI().deleteDesk(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        orderProductUuid: orderProductUuid,
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
    } else {
      response = await OrderDeleteProductAPI().delete(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        orderProductUuid: orderProductUuid,
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
    }
    return response;
  }

  // NOTE: 价格调整
  Future priceAdjustment({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int orderProductUuid,
    required double price,
  }) async {
    RequestOrderPriceProduct request = RequestOrderPriceProduct(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      orderProductUuid: orderProductUuid,
      price: price,
    );
    ResponseCart? response;
    if (orderType == OrderOperationType.desk) {
      response = await OrderPriceProductAPI().price(
        request,
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
    } else {
      response = await OrderPriceProductAPI().priceDesk(
        request,
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
    }
    return response;
  }

  // NOTE: 挂单
  Future<ResponseCart?> hangOrder({
    required int saleBillUuid,
  }) async {
    return await OrderHideAPI().hide(
      saleBillUuid: saleBillUuid,
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );
  }

  // NOTE: 从一个销售订单移动商品到另一个销售订单
  Future<ResponseCart?> saleOrderMoveProduct(RequestOrderMoveProduct req) async {
    ExtraRequestOptions options = ExtraRequestOptions(
      showGlobalLoading: true,
      showFailToast: true,
      showSuccessToast: true,
    );
    ResponseCart? response;
    if (orderType == OrderOperationType.desk) {
      response = await OrderMoveProductAPI().deskProductMove(
        req,
        options: options,
      );
    } else {
      response = await OrderMoveProductAPI().moveProduct(
        req,
        options: options,
      );
    }
    return response;
  }

  // NOTE: 删除销售订单
  Future<ResponseCart?> saleOrderDelete({
    required int saleBillUuid,
    required int saleOrderUuid,
  }) async {
    ResponseCart? response;
    ExtraRequestOptions options = ExtraRequestOptions(
      showGlobalLoading: false,
      showFailToast: true,
      showSuccessToast: true,
    );
    if (orderType == OrderOperationType.desk) {
      response = await OrderSaleOrderDeleteAPI().deskDelete(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        options: options,
      );
    } else {
      response = await OrderSaleOrderDeleteAPI().delete(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        options: options,
      );
    }
    return response;
  }

  // NOTE: 撤销拆单
  Future<ResponseCart?> saleOrderDeleteAll({
    required int saleBillUuid,
    int? memberUuid,
  }) async {
    ResponseCart? response;
    ExtraRequestOptions options = ExtraRequestOptions(
      showGlobalLoading: false,
      showFailToast: true,
      showSuccessToast: true,
    );
    if (orderType == OrderOperationType.desk) {
      response = await OrderSaleOrderDeleteAllAPI().deskDeleteAll(
        saleBillUuid: saleBillUuid,
        memberUuid: memberUuid,
        options: options,
      );
    } else {
      response = await OrderSaleOrderDeleteAllAPI().deleteAll(
        saleBillUuid: saleBillUuid,
        memberUuid: memberUuid,
        options: options,
      );
    }
    return response;
  }

  // NOTE: 取消订单
  Future cancelOrder({
    required int saleBillUuid,
    List<Map<String, dynamic>>? products,
    void Function(ResponseCart)? callback,
  }) async {
    // 获取是否部分支付不可取消，以及已送厨商品
    final (bool isSuccess, BaseList<Product>? products, String reason, bool isDisabled) =
        await OrderIsCellCloseAPI().isCellClose(
      saleBillUuid: saleBillUuid,
      options: ExtraRequestOptions(
        showGlobalLoading: true,
      ),
    );

    // 部分支付不可取消，提示后直接返回
    if (isDisabled) {
      DialogManager.showConfirmDialog(message: reason, showCancelButton: false);
      return null;
    }

    // NOTE: 既不是成功, 又不是部分支付不可取消，也没有已送厨商品，正常不会出现这个情况，所以直接跳过
    if (!isSuccess && !isDisabled && products == null) {
      DialogManager.showToast(reason);
      return null;
    }

    // 是否需要密码
    String password = '';
    if (_configController.isActionNeedPassword) {
      password = await DialogManager.showPasswordDialog(
        onConfirm: AuthAPI().verifyAdvancedPassword,
      );
      if (password.isEmpty) return null;
    }

    // 取消订单
    Future<ResponseCart?> cancelOrders(String cancelReason) async {
      if (orderType == OrderOperationType.desk) {
        return await OrderCancelAPI().desk(
          saleBillUuid: saleBillUuid,
          cancelReason: cancelReason,
          password: password,
          options: ExtraRequestOptions(
            showFailToast: true,
          ),
        );
      } else {
        return await OrderCancelAPI().instant(
          saleBillUuid: saleBillUuid,
          cancelReason: cancelReason.toString(),
          password: password.toString(),
          options: ExtraRequestOptions(
            showFailToast: true,
          ),
        );
      }
    }

    // 取消原因
    if (products != null && products.list.isNotEmpty) {
      Get.dialog(
        barrierDismissible: false,
        DismissKeyboardDialog(
          child: DeskCancelView(
            products: products.list
                .map(
                  (product) => DeskCancelModel(
                    name:
                        '${product.localeName.translate} ${(product.localeAttributeName.translate.isNotEmpty ? '（${product.localeAttributeName.translate}）' : '')}',
                    quantity: product.num,
                  ),
                )
                .toList(),
            onConfirm: (String value) async {
              if (value.isEmpty) {
                DialogManager.showToast('请输入取消原因'.tr);
                return false;
              }
              final cart = await cancelOrders(value);
              if (cart != null) {
                if (callback != null) {
                  callback(cart);
                }
                return true;
              }
              return false;
            },
          ),
        ),
      );
    } else if (password.isEmpty) {
      DialogManager.showConfirmDialog(
        title: '提示'.tr,
        message: '是否取消此笔交易？'.tr,
        onConfirm: () async {
          final cart = await cancelOrders('');
          if (cart != null) {
            if (callback != null) {
              callback(cart);
            }
            return true;
          }
          return false;
        },
      );
    } else {
      final cart = await cancelOrders('');
      if (cart != null) {
        if (callback != null) {
          callback(cart);
        }
        return true;
      }
      return false;
    }
  }

  // NOTE: 送厨
  Future<bool> sendKitchen({
    required int saleBillUuid,
    required int saleOrderUuid,
    bool? isIgnoreMust,
    VoidCallback? Function(ResponseCart? cart)? callback,
  }) async {
    ResponseCart? cart;
    BaseList<ResponseCartProduct>? cartProduct;
    BaseList<MustGoodsItem>? mustGoodsList;
    String? message;
    if (orderType == OrderOperationType.desk) {
      (cart, cartProduct, mustGoodsList, message) = await OrderCookingAPI().cookingDesk(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        isIgnoreMust: isIgnoreMust,
        options: ExtraRequestOptions(
          showFailToast: false,
        ),
      );
    } else {
      (cart, cartProduct, mustGoodsList, message) = await OrderCookingAPI().cookingInstant(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        isIgnoreMust: isIgnoreMust,
        options: ExtraRequestOptions(
          showFailToast: false,
        ),
      );
    }

    if (cart != null) {
      callback?.call(cart);
      return true;
    }

    if (cartProduct != null) {
      Get.back(result: false);
      await DialogManager.showOrderCheckDialog(
        message: message,
        content: cartProduct.list
            .map(
              (item) =>
                  '${item.localeName.translate} ${item.localeAttributeName.translate != '' ? '(${item.localeAttributeName.translate})' : ''}',
            )
            .toList(),
      );
      return false;
    }

    if (mustGoodsList != null) {
      final isConfirm = await DialogManager.showOrderCheckDialog(
        message: message,
        content: mustGoodsList.list
            .map(
              (item) => '${item.name} (${'少点'.tr}${item.needNum}${'份'.tr})',
            )
            .toList(),
      );

      if (isConfirm) {
        return await sendKitchen(
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
          isIgnoreMust: true,
          callback: callback,
        );
      }
    }

    return false;
  }

  // NOTE: 退菜
  Future returningDishes({
    required int saleBillUuid,
    required int saleOrderUuid,
    required ResponseCartProduct orderProduct,
    void Function(ResponseCart? cart)? callback,
  }) async {
    // 是否需要密码
    String password = '';
    if (_configController.isActionNeedPassword) {
      password = await DialogManager.showPasswordDialog(
        onConfirm: AuthAPI().verifyAdvancedPassword,
      );
      if (password.isEmpty) return null;
    }
    // 退菜dialog
    Get.dialog(
      barrierDismissible: false,
      DismissKeyboardDialog(
        child: OrderReturnDishesView(
          isFinished: orderProduct.isShowKitchen == 0 || (orderProduct.finishedNum ?? 0) > 0,
          productNum: orderProduct.num,
          productName: orderProduct.localeName.translate,
          onReasons: () => OrderReturnReasonAPI().getReturnReasons(),
          onConfirm: (data) async {
            ResponseCart? cart;
            RequestOrderReturningProduct params = RequestOrderReturningProduct(
              saleBillUuid: saleBillUuid,
              saleOrderUuid: saleOrderUuid,
              saleOrderProductUuid: orderProduct.uuid,
              password: password,
              // 弹窗返回
              reason: data.reason,
              returnIds: data.returnIds,
              num: data.num,
            );
            if (orderType == OrderOperationType.desk) {
              cart = await OrderReturningProductApi().desk(params);
            } else {
              cart = await OrderReturningProductApi().instant(params);
            }
            if (cart == null) return false;
            if (callback != null) {
              callback(cart);
            }
            return true;
          },
        ),
      ),
    );
  }

  // NOTE: 取消退菜
  Future<ResponseCart?> cancelReturningDishes({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int saleOrderProductUuid,
  }) async {
    ExtraRequestOptions options = ExtraRequestOptions(
      showFailToast: true,
    );
    RequestOrderOptProduct params = RequestOrderOptProduct(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      saleOrderProductUuid: saleOrderProductUuid,
    );
    ResponseCart? cart;
    if (orderType == OrderOperationType.desk) {
      cart = await OrderReturningCancelProductApi().desk(params, options: options);
    } else {
      cart = await OrderReturningCancelProductApi().instant(params, options: options);
    }
    return cart;
  }

  // NOTE: 备注
  Future<ResponseCart?> remarks({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int orderProductUuid,
    required String remark,
  }) async {
    RequestOrderRemarkProduct params = RequestOrderRemarkProduct(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      orderProductUuid: orderProductUuid,
      remark: remark,
    );
    ResponseCart? cart;
    if (orderType == OrderOperationType.desk) {
      cart = await OrderRemarkProductAPI().desk(params);
    } else {
      cart = await OrderRemarkProductAPI().instant(params);
    }
    return cart;
  }

  // NOTE: 赠菜
  Future giftDishes({
    required int saleBillUuid,
    required int saleOrderUuid,
    required ResponseCartProduct orderProduct,
    void Function(ResponseCart? cart)? callback,
  }) async {
    Get.dialog(
      barrierDismissible: false,
      DismissKeyboardDialog(
        child: OrderGiftDishesView(
          onReasons: () => OrderFreeOrGiftReasonAPI().getFreeOrGiftReasons(),
          onConfirm: (data) async {
            ResponseCart? cart;
            ExtraRequestOptions options = ExtraRequestOptions(
              showFailToast: true,
            );
            RequestOrderGiftingProduct params = RequestOrderGiftingProduct(
              saleBillUuid: saleBillUuid,
              saleOrderUuid: saleOrderUuid,
              saleOrderProductUuid: orderProduct.uuid,
              reason: data.reason,
              giftIds: data.giftIds,
            );
            if (orderType == OrderOperationType.desk) {
              cart = await OrderGiftProductApi().desk(params, options: options);
            } else {
              cart = await OrderGiftProductApi().instant(params, options: options);
            }
            if (cart == null) return false;
            if (callback != null) {
              callback(cart);
            }
            return true;
          },
        ),
      ),
    );
  }

  // NOTE: 取消赠菜
  Future<ResponseCart?> cancelGiftDishes({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int saleOrderProductUuid,
  }) async {
    ExtraRequestOptions options = ExtraRequestOptions(
      showFailToast: true,
    );
    RequestOrderOptProduct params = RequestOrderOptProduct(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      saleOrderProductUuid: saleOrderProductUuid,
    );
    ResponseCart? cart;
    if (orderType == OrderOperationType.desk) {
      cart = await OrderGiftCancelProductApi().desk(params, options: options);
    } else {
      cart = await OrderGiftCancelProductApi().instant(params, options: options);
    }
    return cart;
  }

  // 调整人数
  Future<ResponseCart?> adjustPeople({
    required int saleBillUuid,
    required int mealNum,
  }) async {
    return await OrderPopulationAPI().population(
      saleBillUuid: saleBillUuid,
      population: mealNum,
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );
  }

  // NOTE: 调整自助餐
  Future<void> adjustBuffet({
    required int billUuid,
    List<ResponseCartProduct>? buffets,
    List<ResponseCartProduct>? buffetProduct,
    void Function(ResponseCart? cart)? callback,
  }) async {
    final buffetList = await BuffetAPI().getBuffetList(
      options: ExtraRequestOptions(showFailToast: true),
    );
    if (buffetList == null) return;

    // 获取当前选中的buffet人数
    Map<int, int> customerTypeCounts = {};
    if (buffets != null) {
      for (var product in buffets) {
        final typeUuid = product.aboutBuffet.customerTypeUuid;
        final count = product.num;
        customerTypeCounts[typeUuid] = count;
      }
    }

    await Get.dialog<bool>(
      barrierDismissible: false,
      DismissKeyboardDialog(
        child: DeskOpenDialog(
          deskUuid: billUuid,
          title: '调整自助餐'.tr,
          isShowRemark: false,
          isBuffetOrNot: true,
          isBuffetListSelectable: buffetProduct == null || buffetProduct.isEmpty,
          isShowIsBuffetOrNotHeader: false,
          buffetList: buffetList.list,
          selectedBuffetUuids: buffets?.map((e) => e.aboutBuffet.buffetUuid).toSet().toList() ?? [],
          customerTypeCounts: customerTypeCounts,
          onConfirm: (DeskOpenModel openModel) async {
            // 请求接口
            ResponseCart? cart = await OrderAdjustBuffetAPI().adjustBuffet(
              req: RequestOrderAdjustBuffet(
                saleBillUuid: billUuid,
                buffetUuids: openModel.selectedBuffetUuids,
                buffetCustomerTypes: openModel.buffetCustomers
                    .map(
                      (e) => RequestBuffetCustomerType(
                        uuid: e.uuid,
                        mealNum: e.count,
                      ),
                    )
                    .toList(),
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
              ),
            );
            if (cart != null && callback != null) {
              callback(cart);
              return true;
            }
            return false;
          },
        ),
      ),
    );
  }

  // NOTE:  加钟
  Future<ResponseCart?> addClock({
    required int saleBillUuid,
    required int saleOrderUuid,
    required List<int> delayUuids,
  }) async {
    ExtraRequestOptions options = ExtraRequestOptions(
      showFailToast: true,
      showSuccessToast: true,
    );
    ResponseCart? response;
    response = await OrderAddClockAPI().addClock(
      req: RequestOrderAddClock(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        delayUuids: delayUuids,
      ),
      options: options,
    );
    return response;
  }

  // NOTE: 转台
  Future<ResponseCart?> changeDesk({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int deskUuid,
  }) async {
    return await DeskChangeAPI().change(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      deskUuid: deskUuid,
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );
  }

  // NOTE: 合台
  Future<ResponseOrderMergeDesk?> mergeDesk({
    required int saleBillUuid,
    required List<int> deskUuids,
  }) async {
    ResponseOrderMergeDesk? response;
    BaseList<ResponseOrderMergeDeskCheck>? checksList;
    String? msg;
    (response, checksList, msg) = await DeskMergeAPI().merge(
      saleBillUuid: saleBillUuid,
      deskUuids: deskUuids,
    );
    // 处理检查列表
    if (checksList != null) {
      DialogManager.showOrderCheckDialog(
        message: msg,
        content: checksList.list.map((e) => e.deskNo).toList(),
        showCancelButton: false,
      );
      return null;
    }
    //
    return response;
  }

  // NOTE: 转菜
  Future<ResponseCart?> changeProductDesk({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int saleOrderProductUuid,
    required int deskUuid,
  }) async {
    return await OrderProductChangeDeskAPI().changeDesk(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      saleOrderProductUuid: saleOrderProductUuid,
      deskUuid: deskUuid,
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );
  }

  // NOTE: 优惠折扣
  Future<ResponseCart?> discount({
    required int saleBillUuid,
    required int saleOrderUuid,
    required String discountType,
    required DiscountConfirmParamsModel param,
  }) async {
    // NOTE: 10: 优惠折扣，1: 优惠折扣
    int _discountType = 0;
    if (discountType != '10') {
      _discountType = 1;
    }
    if (orderType == OrderOperationType.desk) {
      return await OrderDiscountAPI().desk(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        discountType: _discountType,
        discountMethod: param.discountMethod,
        discount: param.discount ?? 0,
        price: param.price ?? 0,
        zeroRule: param.zeroRule ?? 0,
      );
    } else {
      return await OrderDiscountAPI().instant(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        discountType: _discountType,
        discountMethod: param.discountMethod,
        discount: param.discount ?? 0,
        price: param.price ?? 0,
        zeroRule: param.zeroRule ?? 0,
      );
    }
  }

  // NOTE: 免单
  Future<(bool, PaymentFinish?)> free({
    required int saleBillUuid,
    required int saleOrderUuid,
    required List<int> reasonIds,
    required String reason,
  }) async {
    if (orderType == OrderOperationType.desk) {
      return await OrderFreeAPI().desk(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        reasonIds: reasonIds,
        reason: reason,
      );
    } else {
      return await OrderFreeAPI().instant(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        reasonIds: reasonIds,
        reason: reason,
      );
    }
  }

  // NOTE: 取消优惠折扣
  Future<ResponseCart?> cancelDiscount({
    required int saleBillUuid,
    required int saleOrderUuid,
  }) async {
    ResponseCart? cart;
    if (orderType == OrderOperationType.desk) {
      cart = await OrderDiscountCancelAPI().desk(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
    } else {
      cart = await OrderDiscountCancelAPI().instant(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
    }
    return cart;
  }

  // NOTE: 会员列表
  Future<ResponseMemberData?> getOrderMemberList({
    required int saleBillUuid,
  }) async {
    ResponseMemberData? list;
    if (orderType == OrderOperationType.desk) {
      list = await OrderMemberListApi().desk(
        saleBillUuid: saleBillUuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showGlobalLoading: true,
        ),
      );
    } else {
      list = await OrderMemberListApi().instant(
        saleBillUuid: saleBillUuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showGlobalLoading: true,
        ),
      );
    }
    return list;
  }

  // NOTE: 检查订单
  Future<(bool, OrderCheck? orderCheck, ErrorCode? errorCode)> checkOrder({
    required int saleBillUuid,
    required int saleOrderUuid,
    bool ignoreMust = false,
    ExtraRequestOptions? options,
  }) async {
    if (orderType == OrderOperationType.desk) {
      return await CheckoutAPI().checkDeskOrder(
        query: RequestOrderCheck(
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
          ignoreMust: ignoreMust,
        ),
      );
    } else {
      return await CheckoutAPI().checkInstantOrder(
        query: RequestOrderCheck(
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
          ignoreMust: ignoreMust,
        ),
      );
    }
  }
}
