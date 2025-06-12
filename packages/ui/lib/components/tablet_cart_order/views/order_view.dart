import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/order/request/delete_product.dart';
import 'package:ttpos_model/order/request/gift_product.dart';
import 'package:ttpos_model/order/request/opt_product.dart';
import 'package:ttpos_model/order/request/price_product.dart';
import 'package:ttpos_model/order/request/remark_product.dart';
import 'package:ttpos_model/order/request/returning_product.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_model/reason/free_or_gift_reason.dart';
import 'package:ttpos_model/reason/return_reason.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/order_controller.dart';
import 'package:ttpos_ui/components/tablet_cart_order/models/num_change_model.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_active/order_active.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_content/no_order_list.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_content/ordered_list.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_foot/no_order_foot.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_foot/ordered_foot.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TabletCartOrderView extends StatelessWidget {
  final String tag;
  final bool hasPrice; // 价格权限
  final bool hasReturnDish; // 退菜权限
  final bool hasRemark; // 备注权限
  final bool hasTransferDish; // 转菜权限
  final bool hasGiftDish; // 赠菜权限
  final bool hasSettle; // 结账权限
  final bool isSplitOrder;
  final bool isShowStatus; // 是否显示已制作
  final bool isTablet; // 是否为平板端，只有备注按钮
  final int initOrderStatus; // 订单状态 0=未下单 1=已下单
  final int saleBillUuid;
  final int saleOrderUuid;
  final List<int> canChangeNumList;
  final void Function()? onConfirmPayment;
  final Future<UnsentKitchen?> Function()? onUnsentKitchenList;
  final Future<SentKitchen?> Function()? onSentKitchenList;
  final Future<bool> Function(GoodsNumChangeModel detail)? onNumChange;
  final Future<bool> Function()? onSendKitchen;
  final Future<bool> Function(RequestRemarkProduct req, {ExtraRequestOptions? options})? onRemarkProductDesk;
  final Future<bool> Function(RequestPriceProduct req, {ExtraRequestOptions? options})? onPriceProductDesk;
  final Future<bool> Function(RequestDeleteProduct req, {ExtraRequestOptions? options})? onDeleteProductDesk;
  final Future<bool> Function(RequestReturningProduct req, {ExtraRequestOptions? options})? onReturningProductDesk;
  final Future<bool> Function(RequestOptProduct req, {ExtraRequestOptions? options})? onCancelReturningDishes;
  final Future<bool> Function(RequestGiftingProduct req, {ExtraRequestOptions? options})? onGiftProductDesk;
  final Future<bool> Function(RequestOptProduct req, {ExtraRequestOptions? options})? onCancelGiftDishes;
  final Future<bool> Function({required String password})? onPassword;
  final Future<BaseList<ResponseReturnReason>?> Function()? onReturningReasons;
  final Future<BaseList<ResponseFreeOrGiftReason>?> Function()? onGiftReasons;
  final void Function(Product)? onChangeProductDesk;

  const TabletCartOrderView({
    super.key,
    this.tag = 'instant',
    this.hasPrice = false,
    this.hasReturnDish = false,
    this.hasRemark = false,
    this.hasTransferDish = false,
    this.hasGiftDish = false,
    this.hasSettle = false,
    this.isSplitOrder = false,
    this.isShowStatus = false,
    this.isTablet = false,
    this.initOrderStatus = 0,
    this.saleBillUuid = 0,
    this.saleOrderUuid = 0,
    this.canChangeNumList = const [],
    this.onConfirmPayment,
    this.onUnsentKitchenList,
    this.onSentKitchenList,
    this.onNumChange,
    this.onSendKitchen,
    this.onRemarkProductDesk,
    this.onPriceProductDesk,
    this.onDeleteProductDesk,
    this.onReturningProductDesk,
    this.onCancelReturningDishes,
    this.onGiftProductDesk,
    this.onCancelGiftDishes,
    this.onPassword,
    this.onReturningReasons,
    this.onGiftReasons,
    this.onChangeProductDesk,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      tag: tag,
      init: TabletCartOrderController(
        hasPrice: hasPrice,
        hasReturnDish: hasReturnDish,
        hasRemark: hasRemark,
        hasTransferDish: hasTransferDish,
        hasGiftDish: hasGiftDish,
        isSplitOrder: isSplitOrder,
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        initOrderStatus: initOrderStatus,
        fetchConfirmPayment: onConfirmPayment,
        fetchUnsentKitchenList: onUnsentKitchenList,
        fetchSentKitchenList: onSentKitchenList,
        fetchNumChange: onNumChange,
        fetchSendKitchen: onSendKitchen,
        fetchRemarkProductDesk: onRemarkProductDesk,
        fetchPriceProductDesk: onPriceProductDesk,
        fetchDeleteProductDesk: onDeleteProductDesk,
        fetchReturningProductDesk: onReturningProductDesk,
        fetchCancelReturningDishes: onCancelReturningDishes,
        fetchGiftProductDesk: onGiftProductDesk,
        fetchCancelGiftDishes: onCancelGiftDishes,
        fetchPassword: onPassword,
        fetchReturningReasons: onReturningReasons,
        fetchGiftReasons: onGiftReasons,
        onChangeProductDesk: onChangeProductDesk,
      ),
      dispose: (_) => Get.delete<TabletCartOrderController>(),
      builder: (controller) => Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        padding: EdgeInsets.all(
          24.0.scalePadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '我点的菜'.tr,
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    isTablet
                        ? Obx(
                            () => controller.orderStatus == 0
                                ? TtButton(
                                    text: '备注'.tr,
                                    fontSize: 13.0,
                                    height: 32.0.scaleHeight,
                                    buttonType: ActionButtonType.normal,
                                    onTap: () {
                                      controller.handleOrderAction(OrderActionType.remark);
                                    },
                                  )
                                : SizedBox.shrink(),
                          )
                        : Obx(
                            () => controller.orderActionList.isNotEmpty
                                ? OrderActive(
                                    actionList: controller.orderActionList,
                                    onSelected: (type) {
                                      controller.handleOrderAction(type);
                                    },
                                  )
                                : SizedBox.shrink(),
                          ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  spacing: 10.0,
                  children: TabletCartOrderController.menuList
                      .map(
                        (item) => Expanded(
                          child: Obx(
                            () => TtButton(
                              height: 40.0.scaleHeight,
                              text: item['title'],
                              fontSize: 13.0,
                              buttonType: controller.orderStatus == item['value']
                                  ? ActionButtonType.secondary
                                  : ActionButtonType.normal,
                              onTap: () => controller.handleOrderStatus(item['value']),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 16.0,
                ),
              ],
            ),
            Expanded(
              child: Obx(
                () => controller.orderStatus == 1
                    ? controller.sentKitchenList.isNotEmpty
                        ? OrderedList(
                            isShowStatus: isShowStatus,
                            activeProduct: controller.activeSentKitchenProduct,
                            productList: controller.sentKitchenList,
                            onTap: controller.handleActiveSentKitchenProduct,
                          )
                        : controller.isSentKitchenLoading
                            ? Center(
                                child: SizedBox(
                                  width: 24.0,
                                  height: 24.0,
                                  child: CircularProgressIndicator(),
                                ),
                              )
                            : Center(
                                child: TtEmpty(
                                  imgWidth: 100.0,
                                  fontSize: 12.0,
                                ),
                              )
                    : controller.unsentKitchenList.isNotEmpty
                        ? NoOrderList(
                            canChangeNumList: canChangeNumList,
                            isNumChangeLoading: controller.isNumChangeLoading,
                            changeProduct: controller.changeProduct,
                            activeProduct: controller.activeUnsentKitchenProduct,
                            productList: controller.unsentKitchenList,
                            onTap: controller.handleActiveUnsentKitchenProduct,
                            onChangeCounter: controller.handleUnsentKitchenCounter,
                          )
                        : controller.isUnsentKitchenLoading
                            ? Center(
                                child: SizedBox(
                                  width: 24.0,
                                  height: 24.0,
                                  child: CircularProgressIndicator(),
                                ),
                              )
                            : Center(
                                child: TtEmpty(
                                  imgWidth: 100.0,
                                  fontSize: 12.0,
                                ),
                              ),
              ),
            ),
            Obx(
              () => controller.orderStatus == 1
                  ? OrderedFoot(
                      hasSettle: hasSettle,
                      isTablet: isTablet,
                      isLoading: controller.isLoading,
                      amountInfo: controller.sentKitchenAmountInfo,
                      onTap: controller.handleConfirmPayment,
                    )
                  : NoOrderFoot(
                      isLoading: controller.isSendKitchenLoading,
                      amountInfo: controller.unsentKitchenAmountInfo,
                      onTap: controller.handleSendKitchen,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
