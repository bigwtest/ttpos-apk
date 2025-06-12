import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({
    super.key,
    required this.name,
    required this.amount,
    required this.amountConvert,
    this.showActionButton = false,
    this.primaryCurrencyColor,
    this.secondaryCurrencyColor,
    this.primaryCurrencyFontSize,
    this.secondaryCurrencyFontSize,
    this.onPressed, // 按钮点击
  });

  final String name;
  final String amount;
  final String amountConvert;
  final bool showActionButton;
  final Color? primaryCurrencyColor;
  final Color? secondaryCurrencyColor;
  final double? primaryCurrencyFontSize;
  final double? secondaryCurrencyFontSize;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$name:",
            style: const TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              height: 1.44,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.baseline, // 改为 baseline 对齐
            textBaseline: TextBaseline.alphabetic,
            spacing: 8,
            children: [
              Text(
                amount,
                style: TextStyle(
                  color: primaryCurrencyColor ?? CustomTheme.secondaryColor,
                  fontSize: primaryCurrencyFontSize ?? 12,
                  fontWeight: FontWeight.w600,
                  height: 1.44,
                ),
              ),
              Text(
                amountConvert,
                style: TextStyle(
                  color: secondaryCurrencyColor ?? CustomTheme.greyColor,
                  fontSize: secondaryCurrencyFontSize ?? 12,
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              if (showActionButton)
                Container(
                  margin: EdgeInsets.only(left: 4),
                  child: TextButton(
                    onPressed: onPressed,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // 移除内边距
                      minimumSize: Size.zero, // 移除最小尺寸限制
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      alignment: Alignment.center,
                    ),
                    child: Text(
                      "撤销".tr,
                      style: TextStyle(
                        color: CustomTheme.primaryColor,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        height: 1.44,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
