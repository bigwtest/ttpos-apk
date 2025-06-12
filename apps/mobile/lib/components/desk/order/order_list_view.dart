import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/components/desk/cart/cart_nav/cart_nav.dart';
import 'package:mobile/components/desk/order/order_list_controller.dart';
import 'package:mobile/components/desk/order/views/order_list_not.dart';
import 'package:mobile/components/desk/order/views/ordered_list.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/components/tablet_cart_order/models/num_change_model.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderListView extends StatelessWidget {
  final bool isShowStatus; // 是否显示已制作
  final bool isShowTakeTime; // h5是否开启接单
  final int initOrderStatus; // 订单状态 0=未下单 1=已下单
  final Future<UnsentKitchen?> Function()? onUnsentKitchenList;
  final Future<SentKitchen?> Function()? onSentKitchenList;
  final Future<bool> Function(GoodsNumChangeModel detail)? onNumChange;
  final Future<bool> Function()? onSendKitchen;
  final Future<bool> Function(int uuid, String remark)? onRemarkProductDesk;

  const OrderListView({
    super.key,
    this.isShowStatus = false,
    this.isShowTakeTime = true,
    this.initOrderStatus = 0,
    this.onUnsentKitchenList,
    this.onSentKitchenList,
    this.onNumChange,
    this.onSendKitchen,
    this.onRemarkProductDesk,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OrderListController(
        initOrderStatus: initOrderStatus,
        fetchUnsentKitchenList: onUnsentKitchenList,
        fetchSentKitchenList: onSentKitchenList,
        fetchNumChange: onNumChange,
        fetchSendKitchen: onSendKitchen,
        fetchRemarkProductDesk: onRemarkProductDesk,
      ),
      dispose: (_) => Get.delete<OrderListController>(),
      builder: (controller) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        child: Column(
          spacing: 16.0,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 34.0.scaleHeight,
                  child: Text(
                    '我点的菜'.tr,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Obx(
                  () => controller.orderStatus == 0
                      ? TtButton(
                          text: '备注'.tr,
                          fontSize: 16.0,
                          padding: EdgeInsets.fromLTRB(24, 6, 24, 6),
                          borderRadius: BorderRadius.circular(8.0),
                          height: 34.0.scaleHeight,
                          sizeType: SizeButtonType.small,
                          buttonType: ActionButtonType.normal,
                          onTap: () {
                            controller.handleRemarkDialog();
                          },
                        )
                      : SizedBox.shrink(),
                ),
              ],
            ),
            Row(
              spacing: 16.0,
              children: OrderListController.menuList
                  .map(
                    (item) => Expanded(
                      child: Obx(
                        () => TtButton(
                          fontSize: 16.0,
                          borderRadius: BorderRadius.circular(8.0),
                          text: item['title'],
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
              height: 320.0.scaleHeight,
              child: Obx(
                () => controller.orderStatus == 1
                    ? controller.sentKitchenList.isNotEmpty
                        ? OrderedList(
                            isShowTakeTime: isShowTakeTime,
                            isShowStatus: isShowStatus,
                            productList: controller.sentKitchenList,
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
                        ? OrderListNot(
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
            // 购物车导航
            Obx(
              () => CartNav(
                isLoading: controller.isSendKitchenLoading,
                amountInfo: controller.unsentKitchenAmountInfo,
                onChange: (status) {
                  if (status == 0) return;
                  controller.handleSendKitchen();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
