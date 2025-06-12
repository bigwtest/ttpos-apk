import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/payment/model/payment_result.dart';
import 'package:ttpos_ui/theme/theme.dart';

class PayCompleteDialog extends StatelessWidget {
  const PayCompleteDialog({
    super.key,
    required this.payResult,
    this.onCancel,
    this.onPrint,
    this.isShowInvoiceButton = false,
    this.onInvoice,
  });

  final PaymentResult payResult;
  // 发票按钮显示
  final bool isShowInvoiceButton;
  final VoidCallback? onCancel;
  final VoidCallback? onPrint;
  final VoidCallback? onInvoice;

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardDialog(
      child: Container(
        width: 320.0,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 标题
            Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                '收款'.tr,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: CustomTheme.secondaryColor,
                ),
              ),
            ),
            // 内容区域
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildInfoItem(
                          '最终应收'.tr,
                          payResult.payPricePrimaryCurrency,
                          subContent: payResult.payPriceSecondaryCurrency,
                        ),
                        _buildInfoItem(
                          '实收金额'.tr,
                          payResult.actualPricePrimaryCurrency,
                          subContent: payResult.actualPriceSecondaryCurrency,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        _buildInfoItem(
                          '支付方式'.tr,
                          payResult.paymentMethodNames.map((name) {
                            if (name.contains('(')) {
                              final parts = name.split('(');
                              return '${parts[0]} (${parts[1]}';
                            }
                            return name;
                          }).join('\n'),
                        ),
                        if (payResult.chargeDuePrimaryCurrency.isNotEmpty)
                          _buildInfoItem(
                            '找零金额'.tr,
                            payResult.chargeDuePrimaryCurrency,
                            subContent: payResult.chargeDueSecondaryCurrency,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // 底部按钮
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
                spacing: 8.0,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: onCancel ?? () => Get.back(),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: CustomTheme.secondaryColor.shade300,
                          ),
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Text(
                        '退出'.tr,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: onPrint,
                      style: TextButton.styleFrom(
                        backgroundColor: isShowInvoiceButton ? null : CustomTheme.primaryColor,
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        shape: RoundedRectangleBorder(
                          side: isShowInvoiceButton
                              ? BorderSide(
                                  color: CustomTheme.secondaryColor.shade300,
                                )
                              : BorderSide(
                                  color: Colors.transparent,
                                ),
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Text(
                        '打印小票'.tr,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  if (isShowInvoiceButton)
                    Expanded(
                      child: TextButton(
                        onPressed: onInvoice,
                        style: TextButton.styleFrom(
                          backgroundColor: CustomTheme.primaryColor,
                          padding: EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Text(
                          '发票'.tr,
                          style: TextStyle(
                            color: CustomTheme.secondaryColor,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(String title, String content, {String? subContent}) {
    return Container(
      height: 80.0,
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12.0,
              color: CustomTheme.secondaryColor.withValues(alpha: 165), // 165 ≈ 0.65 * 255
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    content,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: CustomTheme.secondaryColor,
                      height: 1.5,
                    ),
                  ),
                ),
                if (subContent != null)
                  Flexible(
                    child: Text(
                      subContent,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: CustomTheme.secondaryColor.withValues(alpha: 115), // 115 ≈ 0.45 * 255
                      ),
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
