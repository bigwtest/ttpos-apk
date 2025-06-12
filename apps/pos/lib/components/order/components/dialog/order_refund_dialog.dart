// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/order/components/dialog/refund_item_list.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/order_list/order_refund_controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderRefundDialog extends StatelessWidget {
  OrderRefundDialog({super.key});

  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  // 获取控制器实例 - 复杂点，但生命力更强
  OrderRefundController get orderRefundController {
    if (Get.isRegistered<OrderRefundController>()) {
      return Get.find<OrderRefundController>();
    }
    return Get.put(OrderRefundController());
  }

  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 670,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Obx(
        () => Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              child: Text(
                '退款'.tr,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: CustomTheme.secondaryColor,
                ),
              ),
            ),
            SizedBox(height: 16.08),
            if (orderRefundController.isLoading)
              Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              )
            else
              Flex(
                direction: Axis.vertical,
                children: [
                  Row(
                    children: [
                      Text(
                        '退款方式'.tr,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: CustomTheme.secondaryColor,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      GestureDetector(
                        onTap: () {
                          orderRefundController.refundType = 1;
                        },
                        child: Obx(
                          () => _buildRefundOption(
                            orderRefundController.refundType == 1,
                            '整单退款'.tr,
                          ),
                        ),
                      ),
                      if (orderRefundController.isNewOrder) ...[
                        SizedBox(width: 24.0),
                        GestureDetector(
                          onTap: () {
                            orderRefundController.refundType = 2;
                          },
                          child: Obx(
                            () => _buildRefundOption(
                              orderRefundController.refundType == 2,
                              '部分退款'.tr,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  SizedBox(height: 8.0),
                  orderRefundController.refundType == 1
                      ? Obx(
                          () => Row(
                            children: [
                              Text(
                                '可退款金額'.tr,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: CustomTheme.secondaryColor,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                orderRefundController.refundAmount.primaryCurrency,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: CustomTheme.errorColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Obx(
                          () => RefundItemList(
                            refundItems: orderRefundController.refundProductList,
                            onTapMinus: (index) {
                              orderRefundController.refundProductList[index].refundNum--;
                            },
                            onTapPlus: (index) {
                              orderRefundController.refundProductList[index].refundNum++;
                            },
                          ),
                        ),
                  SizedBox(height: 8.0),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: CustomTheme.primaryColor.shade50,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '支付记录（原路退款会按照以下顺序退回）：'.tr,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: CustomTheme.secondaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 112.56,
                          ),
                          child: SingleChildScrollView(
                            child: Obx(
                              () => Column(
                                children: [
                                  for (var item in orderRefundController.paymentRecords)
                                    _buildPaymentRecord(
                                      item.paymentMethodName,
                                      item.paymentAmount.toCleanString,
                                      item.canReturnAmount.toCleanString,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: TtButton(
                    text: '退出'.tr,
                    buttonType: ActionButtonType.outline,
                    fontWeight: FontWeight.w600,
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Obx(
                    () => TtButton(
                      text: '原路退回'.tr,
                      buttonType: ActionButtonType.primary,
                      isLoading: orderRefundController.isRefunding,
                      fontWeight: FontWeight.w600,
                      onTap: () {
                        orderRefundController.refundOrder();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRefundOption(bool isSelected, String text) {
    return Row(
      children: [
        Container(
          width: 16.0,
          height: 16.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? CustomTheme.primaryColor : Colors.white,
            border: Border.all(
              color: isSelected ? CustomTheme.primaryColor : CustomTheme.greyColor.shade300,
            ),
          ),
          child: isSelected
              ? Icon(
                  Icons.check,
                  size: 8.0,
                  color: Colors.white,
                )
              : null,
        ),
        SizedBox(
          width: 8.0,
          height: 16.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12.0,
            color: CustomTheme.secondaryColor,
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentRecord(String title, String amount, String refundable) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12.0,
                color: CustomTheme.secondaryColor,
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            flex: 1,
            child: RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.end,
              textScaler: TextScaler.linear(fontSizeController.textScaler),
              text: TextSpan(
                style: TextStyle(
                  fontSize: 12.06,
                ),
                children: [
                  TextSpan(
                    text: amount,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                    ),
                  ),
                  TextSpan(
                    text: '(',
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                    ),
                  ),
                  TextSpan(
                    text: '剩余可退'.tr,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                    ),
                  ),
                  TextSpan(
                    text: refundable,
                    style: TextStyle(
                      color: CustomTheme.errorColor.shade500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ')',
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
