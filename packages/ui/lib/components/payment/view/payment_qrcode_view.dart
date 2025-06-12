// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';
// Project imports:

class PaymentQrcodeView extends StatelessWidget {
  const PaymentQrcodeView({
    super.key,
    required this.paymentName,
    required this.paymentAmountPrimaryCurrency,
    required this.paymentAmountSecondaryCurrency,
    required this.paymentQrcode,
    this.isShowPrintQrcode = true,
    this.onPrintQrcode,
    this.onRefresh,
    this.onConfirm,
  });

  final String paymentName;
  final String paymentAmountPrimaryCurrency;
  final String paymentAmountSecondaryCurrency;
  final String paymentQrcode;
  final bool isShowPrintQrcode;
  final Function()? onPrintQrcode;
  // 刷新二维码
  final Function()? onRefresh;

  // 确认
  final Function()? onConfirm;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364.48,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 8.0,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                '$paymentName${'收款：'.tr}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 24.12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8.0,
                children: [
                  Text(
                    paymentAmountPrimaryCurrency,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CustomTheme.errorColor.shade500,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      height: 1.50,
                    ),
                  ),
                  Text(
                    paymentAmountSecondaryCurrency,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CustomTheme.errorColor.shade500,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 131.32,
              height: 131.32,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Image.network(
                paymentQrcode,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: Row(
                      spacing: 8.0,
                      children: [
                        CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                        Text('二维码生成中…'.tr),
                      ],
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return GestureDetector(
                    onTap: onRefresh,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CustomTheme.greyColor.shade300,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text('生成失败，重新生成'.tr),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 16.0,
              child: Text(
                '${'请用'.tr}$paymentName${'扫一扫支付'.tr}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  height: 1.44,
                ),
              ),
            ),
            Row(
              spacing: 8.0,
              children: [
                _buildButton(
                  '退出'.tr,
                  onPressed: () => Get.back(),
                ),
                if (isShowPrintQrcode)
                  _buildButton(
                    '打印码'.tr,
                    onPressed: isShowPrintQrcode ? onPrintQrcode : null,
                  ),
                _buildButton(
                  '已支付'.tr,
                  isPrimary: true,
                  onPressed: onConfirm,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, {bool isPrimary = false, VoidCallback? onPressed}) {
    final primaryStyle = TextButton.styleFrom(
      backgroundColor: CustomTheme.primaryColor,
      minimumSize: Size(
        double.infinity,
        40.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    );
    final defaultStyle = TextButton.styleFrom(
      minimumSize: Size(
        double.infinity,
        40.0,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: CustomTheme.secondaryColor.shade300,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    );
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: isPrimary ? primaryStyle : defaultStyle,
        child: Text(
          text,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            height: 1.44,
          ),
        ),
      ),
    );
  }
}
