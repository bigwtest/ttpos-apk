// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/common/input_num_components.dart';
import 'package:pos/components/order/components/dialog/top_up_refund_details.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_refund_controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TopUpRefundDialog extends StatelessWidget {
  TopUpRefundDialog({super.key});
  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  // 获取控制器实例 - 复杂点，但生命力更强
  TopUpRefundController get topUpRefundController {
    if (Get.isRegistered<TopUpRefundController>()) {
      return Get.find<TopUpRefundController>();
    }
    return Get.put(TopUpRefundController());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 670,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 536.0,
        ),
        child: Flex(
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
            SizedBox(height: 16.0),
            Obx(
              () => Flexible(
                child: topUpRefundController.isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      )
                    : SingleChildScrollView(
                        child: Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      topUpRefundController.refundType = 1;
                                      topUpRefundController.refundAmount = 0;
                                    },
                                    child: Obx(
                                      () => _buildRefundOption(
                                        topUpRefundController.refundType == 1,
                                        '整单退款'.tr,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 24.0),
                                  GestureDetector(
                                    onTap: () {
                                      topUpRefundController.refundType = 2;
                                    },
                                    child: Obx(
                                      () => _buildRefundOption(
                                        topUpRefundController.refundType == 2,
                                        '部分退款'.tr,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
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
                                    topUpRefundController.refundInfo.refundableAmount.primaryCurrency,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: CustomTheme.errorColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              if (topUpRefundController.refundType == 2)
                                Obx(
                                  () => SizedBox(
                                    width: double.infinity,
                                    child: InputNumComponents(
                                      hintText: '请输入退款金额'.tr,
                                      max: topUpRefundController.refundInfo.refundableAmount,
                                      min: 0,
                                      onChanged: (value) {
                                        if (value.isNotEmpty) {
                                          topUpRefundController.refundAmount = double.tryParse(value) ?? 0;
                                        } else {
                                          topUpRefundController.refundAmount = 0;
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              if (topUpRefundController.refundType == 2) const SizedBox(height: 8.0),
                              Obx(
                                () => TopUpRefundDetails(
                                  refundInfo: topUpRefundController.refundInfo,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                '退款后不变更赠送账户及积分，如需变更，请前去商家后台操作'.tr,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: CustomTheme.secondaryColor,
                                ),
                              ),
                              const SizedBox(height: 8.0),
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
                                    const SizedBox(height: 8.0),
                                    for (var item in topUpRefundController.refundInfo.paymentRecords)
                                      _buildPaymentRecord(
                                        item.paymentName,
                                        item.paymentAmount.toString().toCleanString,
                                        item.refundableAmount.toString().toCleanString,
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              spacing: 8.0,
              children: [
                Expanded(
                  child: TtButton(
                    text: '退出'.tr,
                    fontWeight: FontWeight.w600,
                    buttonType: ActionButtonType.outline,
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
                Expanded(
                  child: Obx(() {
                    return TtButton(
                      text: '原路退回'.tr,
                      fontWeight: FontWeight.w600,
                      isLoading: topUpRefundController.isRefund,
                      buttonType: ActionButtonType.primary,
                      onTap: () {
                        topUpRefundController.nowType = 'details';
                        topUpRefundController.refund();
                      },
                    );
                  }),
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
        const SizedBox(width: 8.0),
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
          Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
              color: CustomTheme.secondaryColor,
            ),
          ),
          RichText(
            textScaler: TextScaler.linear(fontSizeController.textScaler),
            text: TextSpan(
              children: [
                TextSpan(
                  text: amount,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
                TextSpan(
                  text: '(',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
                TextSpan(
                  text: '剩余可退'.tr,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
                TextSpan(
                  text: refundable,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.errorColor.shade500,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ')',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
