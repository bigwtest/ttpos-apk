import 'package:assistant/api/auth/auth_api.dart';
import 'package:assistant/api/buffet/buffet_api.dart';
import 'package:assistant/api/checkout/checkout_api.dart';
import 'package:assistant/api/goods/must_api.dart';
import 'package:assistant/api/member/member_api.dart';
import 'package:assistant/api/order/add_product_api.dart';
import 'package:assistant/api/order/adjust_buffet_api.dart';
import 'package:assistant/api/order/cancel_api.dart';
import 'package:assistant/api/order/cooking_api.dart';
import 'package:assistant/api/order/discount_api.dart';
import 'package:assistant/api/order/free_api.dart';
import 'package:assistant/api/order/free_or_gift_reason.dart';
import 'package:assistant/api/order/is_cell_close.dart';
import 'package:assistant/api/order/population_api.dart';
import 'package:assistant/api/print/print_api.dart';
import 'package:assistant/controllers/base/main_controller.dart';
import 'package:assistant/controllers/checkout/checkout_controller.dart';
import 'package:assistant/controllers/home/home_drawer_controller.dart';
import 'package:assistant/pages/desks/controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/goods/request/add_product.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/request/adjust_buffet.dart';
import 'package:ttpos_model/order/request/cancel_discount.dart';
import 'package:ttpos_model/order/request/discount.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_model/print/request/invoice.dart';
import 'package:ttpos_model/print/request/pre_checkout.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/desks/views/open/dialog.dart';
import 'package:ttpos_ui/components/goods/controllers/detail_controller.dart';
import 'package:ttpos_ui/components/goods/controllers/goods_controller.dart';
import 'package:ttpos_ui/components/goods/models/detail_model.dart';
import 'package:ttpos_ui/components/goods/views/must/must.dart';
import 'package:ttpos_ui/components/tablet_cart/mixin/tablet_active.dart';
import 'package:ttpos_ui/components/tablet_cart/mixin/tablet_cart.dart';
import 'package:ttpos_ui/components/tablet_cart/views/cart/parabola_animator.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/order_operation.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_model.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_discounts/desk_discounts_view.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DeskMainController extends GetxController with MixinTabletCart {
  final String tag;
  @override
  final Future<ResponseDeskPing?> Function(int deskId)? fetchDeskPing;
  @override
  final int pollingTime;
  DeskMainController({
    this.tag = 'desk',
    this.fetchDeskPing,
    this.pollingTime = 30,
  });
  //
  GoodsController get _goodsController {
    try {
      return Get.find<GoodsController>(tag: tag);
    } catch (e) {
      return Get.put(GoodsController(), tag: tag);
    }
  }

  //
  final Log _logger = Log(appName: 'DeskMainController');
  Logger get logger => _logger.logger;
  //
  final BaseInfoController baseInfoController = Get.put(BaseInfoController());

  // 桌台ID
  @override
  final int deskId = int.tryParse(Get.rootDelegate.parameters['deskId'] ?? '0') ?? 0;
  @override
  final int saleBillUuid = int.tryParse(Get.rootDelegate.parameters['saleBillUuid'] ?? '0') ?? 0;

  @override
  void Function()? get onBack => () {
        HomeDrawerController.closeDrawer();
        DesksMainController.toDeskListView();
      };

  // 操作按钮
  List<Map<String, dynamic>> get actionList => [
        {
          // 调整自助餐、人数
          'label': deskInfo?.isBuffet == true ? PermissionKey.adjustBuffet.comment.tr : PermissionKey.people.comment.tr,
          'value': deskInfo?.isBuffet == true ? TabletActiveType.adjustBuffet : TabletActiveType.adjustPeople,
          'isPermission':
              deskInfo?.isBuffet == true ? baseInfoController.hasAdjustBuffet : baseInfoController.hasPeople,
        },
        {
          // 转台
          'label': PermissionKey.turnTable.comment.tr,
          'value': TabletActiveType.turnTable,
          'isPermission': baseInfoController.hasTurnTable,
        },
        {
          // 清台
          'label': PermissionKey.clearTable.comment.tr,
          'value': TabletActiveType.clearTable,
          'isPermission': baseInfoController.hasClearTable,
        },
        {
          // 并台
          'label': PermissionKey.mergeTable.comment.tr,
          'value': TabletActiveType.parallelPlatform,
          'isPermission': baseInfoController.hasMergeTable,
        },
        {
          // 优惠折扣
          'label': PermissionKey.discount.comment.tr,
          'value': TabletActiveType.discount,
          'isPermission': baseInfoController.hasDiscount,
        },
      ].where((item) => item['isPermission'] == true).toList();

  //
  final drawerController = Get.find<HomeDrawerController>();

  // 购物车图标Key（用于定位终点位置）
  final GlobalKey cartIconKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();
    // 检查桌台ID参数是否存在
    if (deskId == 0 || saleBillUuid == 0) {
      DesksMainController.backDeskListView(immediate: false);
      return;
    }

    // 监听必选商品列表变化
    everAll([mustGoodsSearchList, searchDeskInfo], (_) {
      if (mustGoodsList.isNotEmpty) {
        if (deskInfo?.isLock == true) return;
        _showMustGoodsListDialog();
      } else {
        if (!_isShowDialog) return;
        Get.back();
      }
    });
  }

  // 添加购物车
  Future<bool> addProduct(GoodsDetailModel detail) async {
    if (deskInfo?.saleOrderUuid == null || deskInfo?.saleOrderUuid == 0) {
      logger.severe('addProduct => deskInfo:$deskInfo');
      // DialogManager.showToast('桌台订单参数错误, 请退出重试！'.tr);
      return false;
    }
    //
    try {
      // 设置商品参数
      final product = RequestOrderAddProduct(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
        flavorUuid: detail.flavorUuid,
        attributeUuid: detail.attributeUuid,
        sauceUuid: detail.sauceUuid,
        mustPlanUuid: detail.mustPlanUuid,
      );
      final response = await OrderAddProductAPI().deskAddProduct(
        product,
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      if (response != null) {
        // 刷新列表
        await loadDeskPingFromAPI(
          forceRefresh: true,
        );
        return true;
      }
      // 返回响应数据
      return false;
    } catch (error, stackTrace) {
      logger.severe('addProduct Error:', error, stackTrace);
      return false;
    }
  }

  // 加购弹窗
  void handleDetailChange(
    GoodsProduct detail, {
    int? mustId,
    int? flavorId,
    GlobalKey? startKey,
    Offset? startPos,
  }) {
    GoodsDetailController.showGoodsDetailDialog(
      detail,
      (req, ballDetail) async {
        // 动画开始
        if (ballDetail != null && ballDetail.context != null && ballDetail.startPos != null) {
          ParabolaAnimator.run(
            context: ballDetail.context!,
            startPos: ballDetail.startPos!,
            endKey: cartIconKey,
          );
        }
        //
        req.mustPlanUuid = mustId ?? 0;
        final res = await addProduct(req);
        return res;
      },
      // 自助餐是否到期
      isTimeout: isTimeout,
      startKey: startKey,
      startPos: startPos,
    );
  }

  // 打开订单列表
  void handleCartNav(status) {
    drawerController.openHomeDrawer(
      HomeDrawerType.cartListDrawer,
      params: {
        'orderStatus': status,
        'saleBillUuid': saleBillUuid,
        'saleOrderUuid': deskInfo?.saleOrderUuid ?? 0,
        'isSplitOrder': deskInfo?.isSplitOrder ?? false,
        'isTablet': false,
        'deskId': deskId,
        'refreshDeskPing': () {
          loadDeskPingFromAPI(
            forceRefresh: true,
          );
        },
        'onConfirmPayment': handleConfirmPayment,
      },
    );
  }

  //
  void handleAction(TabletActiveType type) async {
    // 是否拆单，转台除外
    if (deskInfo?.isSplitOrder == true && type != TabletActiveType.turnTable) {
      DialogManager.showConfirmDialog(
        message: '当前订单已拆单，请前去收银机操作'.tr,
      );
      return;
    }
    switch (type) {
      case TabletActiveType.adjustPeople:
        Get.dialog<bool>(
          DismissKeyboardDialog(
            child: DeskOpenDialog(
              deskUuid: deskId,
              deskNo: deskInfo?.deskNo ?? '',
              isShowRemark: false,
              isBuffetOrNot: false,
              isBuffetListSelectable: false,
              isShowIsBuffetOrNotHeader: false,
              onConfirm: (DeskOpenModel openModel) async {
                // 请求接口
                final res = await OrderPopulationAPI().population(
                  saleBillUuid: saleBillUuid,
                  population: openModel.notBuffetCustomerCount,
                  options: ExtraRequestOptions(
                    showFailToast: true,
                  ),
                );
                return res;
              },
            ),
          ),
          barrierDismissible: false,
        );
        return;
      case TabletActiveType.adjustBuffet:
        final buffetList = await BuffetAPI().getBuffetList(
          options: ExtraRequestOptions(showFailToast: true),
        );
        if (buffetList == null) return;
        final selectedBuffet = productList.where((item) => item.aboutBuffet.isCustomer).toList();
        // 获取当前选中的buffet人数
        Map<int, int> customerTypeCounts = {};
        if (selectedBuffet.isNotEmpty) {
          for (var product in selectedBuffet) {
            final typeUuid = product.aboutBuffet.customerTypeUuid;
            final count = product.num;
            customerTypeCounts[typeUuid] = count;
          }
        }

        final bool isBuffet = productList.any(
          (item) =>
              item.productPackageUuid != 0 &&
              _goodsController.buffetGoodsList.any((buffetItem) => buffetItem.uuid == item.productPackageUuid),
        );

        Get.dialog<bool>(
          DismissKeyboardDialog(
            child: DeskOpenDialog(
              deskUuid: deskId,
              deskNo: deskInfo?.deskNo ?? '',
              isShowRemark: false,
              isBuffetOrNot: true,
              // 这里要判断有没有加购套餐商品
              isBuffetListSelectable: !isBuffet,
              isShowIsBuffetOrNotHeader: false,
              buffetList: buffetList.list,
              // 当前已选中的套餐
              selectedBuffetUuids: selectedBuffet.map((e) => e.aboutBuffet.buffetUuid).toSet().toList(),
              // 当前选中的套餐顾客类型人数
              customerTypeCounts: customerTypeCounts,
              onConfirm: (DeskOpenModel openModel) async {
                // 请求接口
                final res = await OrderAdjustBuffetAPI().adjustBuffet(
                  req: RequestOrderAdjustBuffet(
                    saleBillUuid: saleBillUuid,
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
                );
                // 调整自助餐成功 - 刷新商品列表
                if (res) {
                  _goodsController.loadInitData(
                    forceRefresh: true,
                  );
                }
                return res;
              },
            ),
          ),
          barrierDismissible: false,
        );
        return;
      case TabletActiveType.turnTable:
        // 转台
        drawerController.openHomeDrawer(
          HomeDrawerType.turntableListDrawer,
          params: {
            'deskNo': deskInfo?.deskNo,
            'saleBillUuid': saleBillUuid,
            'saleOrderUuid': deskInfo?.saleOrderUuid ?? 0,
          },
        );
        return;
      case TabletActiveType.clearTable:
        // 清台
        OrderOperation(
          saleBillUuid: saleBillUuid,
          saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
          deskUuid: deskId,
        ).onCloseOrder(
          fetchKitchenProducts: OrderIsCellCloseAPI().isCellClose,
          fetchPassword: AuthAPI().verifyAdvancedPassword,
          fetchCancelDesk: OrderCancelAPI().cancelDesk,
          callbackSuccess: () {
            handleBack();
          },
        );
        return;
      case TabletActiveType.parallelPlatform:
        // 并台
        drawerController.openHomeDrawer(
          HomeDrawerType.mergerListDrawer,
          params: {
            'deskUuid': deskId,
            'saleBillUuid': saleBillUuid,
          },
        );
        return;
      case TabletActiveType.discount:
        final ResponseSaleOrder saleOrderInfo = saleOrderList[0];
        // 优惠折扣
        Get.dialog(
          barrierDismissible: false,
          DismissKeyboardDialog(
            child: DeskDiscountsView(
              // 优惠折扣，初始化信息
              initData: DiscountConfirmParamsModel(
                // 折扣方式 1: 改价, 2: 折扣, 3: 抹零, 4: 免单
                discountMethod: saleOrderInfo.zeroRule != 0
                    ? 3
                    : saleOrderInfo.customDiscountRate != 1
                        ? 2
                        : 1, // 优惠方式
                discountStr: ((saleOrderInfo.customDiscountRate) * 100).round().toString(), // 折扣
                zeroRule: saleOrderInfo.zeroRule, // 抹零类型
              ),
              autoDiscountMessage: saleOrderInfo.autoDiscountMessage,
              showCancel: saleOrderInfo.isDiscount,
              price: saleOrderInfo.amountInfo?.amount,
              discountTypeText: baseInfoController.discountTypeText,
              onReasons: () => FreeOrGiftReasonAPI().getFreeOrGiftReasons(),
              onCancelDiscount: () => OrderDiscountAPI().cancelDiscountDesk(
                RequestCancelDiscountDesk(
                  saleBillUuid: saleBillUuid,
                  saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
                ),
                options: ExtraRequestOptions(
                  showFailToast: true,
                  showSuccessToast: true,
                ),
              ),
              onConfirm: (data) async {
                // 免单
                if (data.discountMethod == 4) {
                  return await OrderOperation(
                    saleBillUuid: saleBillUuid,
                    saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
                  ).freeOrder(
                    products: unsentKitchenInfo?.products.list ?? [],
                    reason: data.freeRemark ?? '',
                    reasonIds: data.freeReasons ?? [],
                    fetchOrderCooking: OrderCookingAPI().cookingDesk,
                    fetchFreeDesk: OrderFreeAPI().freeDesk,
                    fetchPrintDeskPreCheckout: PrintAPI().printDeskPreCheckout,
                    fetchDeskPrintInvoice: PrintAPI().deskPrintInvoice,
                    callbackSuccess: () {
                      handleBack();
                    },
                  );
                }
                // 设置折扣
                final res = await OrderDiscountAPI().discountDesk(
                  RequestDiscountDesk(
                    saleBillUuid: saleBillUuid,
                    saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
                    discountMethod: data.discountMethod,
                    price: data.price ?? 0,
                    zeroRule: data.zeroRule ?? 0,
                    discountType: baseInfoController.discountType != '10' ? 1 : 0, // 10: 优惠折扣，1: 优惠折扣
                    discount: data.discount ?? 0,
                  ),
                  options: ExtraRequestOptions(
                    showFailToast: true,
                    showSuccessToast: true,
                  ),
                );
                return res;
              },
            ),
          ),
        );
        return;
    }
  }

  // 返回
  void handleBack() {
    DesksMainController.toDeskListView();
  }

  // 去结账
  void handleConfirmPayment() {
    CheckoutController.onCheckOutTap(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
      callbacks: CheckoutCallbacks(
        onCheckOutComplete: DesksMainController.backDeskListView,
        onRefreshCart: () {
          loadDeskPingFromAPI(
            forceRefresh: true,
          );
        },
        onCheckPaymentOrder: CheckoutAPI().checkDeskOrder,
        onGetPaymentOrder: CheckoutAPI().getDeskPaymentOrder,
        onCreatePaymentOrder: CheckoutAPI().createDeskPaymentOrder,
        onCancelPaymentOrder: CheckoutAPI().cancelDeskPaymentOrder,
        onFinishPaymentOrder: CheckoutAPI().finishDeskPaymentOrder,
        onGetMemberDiscount: CheckoutAPI().getDeskOrderMemberDiscount,
        onUseMemberDiscount: CheckoutAPI().useDeskOrderMemberDiscount,
        onRemoveMemberDiscount: CheckoutAPI().removeDeskOrderMemberDiscount,
        onZeroRulePaymentOrder: CheckoutAPI().setDeskPaymentZeroRule,
        onSearchMember: MemberAPI().searchMemberList,
        onCooking: () => OrderOperation(
          saleBillUuid: saleBillUuid,
          saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
        ).sendKitchen(
          fetchOrderCooking: OrderCookingAPI().cookingDesk,
        ),
        onCheckFailed: () => {
          // 因为关闭了弹窗，所以不用刷新列表了
        },
        onPreCheckoutPrint: ({required RespPrinterRequest data, ExtraRequestOptions? options}) async {
          return await PrintAPI().printDeskPreCheckout(data: data, options: options);
        },
        // 调用打印接口成功之后 - 执行购物车锁定 - 无须刷新购物车
        onOrderSetLock: () {
          deskInfoUpdate(
            isLock: true,
          );
        },
        onInvoicePrint: ({required InvoicePrintRequest data, ExtraRequestOptions? options}) async {
          // 待接口修改一鑫
          return await PrintAPI().deskPrintInvoice(data: data, options: options);
        },
        onGetPaymentMethodQrcode: CheckoutAPI().getDeskPaymentMethodQrcode,
      ),
    );
  }

  // 必点商品
  static bool _isShowDialog = false;
  @override
  bool get isShowMustDialog => _isShowDialog;
  Future<void> _showMustGoodsListDialog() async {
    if (_isShowDialog) return;
    _isShowDialog = true;
    // 关闭弹窗
    GoodsDetailController.hideDialog();
    //
    try {
      await Get.dialog(
        DismissKeyboardDialog(
          child: SizedBox(
            width: 550.0.scaleWidth,
            height: 480.0.scaleHeight,
            child: Obx(
              () => GoodsMust(
                initMust: mustGoodsList,
                onMustRefresh: () async {
                  final res = await loadDeskPingFromAPI(
                    forceRefresh: true,
                  );
                  return res;
                },
                onDetailChange: handleDetailChange,
                onConfirmMust: () async {
                  final res = await MustAPI().fetchConfirmMustDesk(
                    saleBillUuid,
                    options: ExtraRequestOptions(
                      showFailToast: true,
                      showSuccessToast: true,
                    ),
                  );
                  //
                  if (res) {
                    Get.back();
                    loadDeskPingFromAPI(
                      forceRefresh: true,
                    );
                  }
                  return res;
                },
              ),
            ),
          ),
        ),
      );
    } catch (e) {
      //
    } finally {
      _isShowDialog = false;
    }
  }

  // 关闭弹窗
  void closeMustDialog() {
    if (_isShowDialog) {
      Get.back();
    }
    _isShowDialog = false;
  }
}
