import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class PaymentOrderItem extends StatelessWidget {
  const PaymentOrderItem({
    super.key,
    this.buttonKey,
    required this.label,
    required this.primaryCurrency,
    required this.secondaryCurrency,
    this.showActionButton = false,
    this.showZeroButton = false,
    this.primaryCurrencyColor,
    this.secondaryCurrencyColor,
    this.primaryCurrencyFontSize,
    this.secondaryCurrencyFontSize,
    this.onPressed,
  });

  final GlobalKey? buttonKey;
  final String label;
  final String primaryCurrency;
  final String secondaryCurrency;
  final bool showActionButton;
  final bool showZeroButton;
  final Color? primaryCurrencyColor;
  final Color? secondaryCurrencyColor;
  final double? primaryCurrencyFontSize;
  final double? secondaryCurrencyFontSize;
  final void Function()? onPressed;

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
            label,
            style: const TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 13.0,
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
                primaryCurrency,
                style: TextStyle(
                  color: primaryCurrencyColor ?? CustomTheme.secondaryColor,
                  fontSize: primaryCurrencyFontSize ?? 13.0,
                  fontWeight: FontWeight.w600,
                  height: 1.44,
                ),
              ),
              if (secondaryCurrency.isNotEmpty)
                Text(
                  secondaryCurrency,
                  style: TextStyle(
                    color: secondaryCurrencyColor ?? CustomTheme.greyColor,
                    fontSize: secondaryCurrencyFontSize ?? 13.0,
                    fontWeight: FontWeight.w600,
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
              if (showZeroButton)
                Container(
                  margin: EdgeInsets.only(left: 4.0),
                  child: TextButton(
                    key: buttonKey,
                    onPressed: onPressed,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, // 移除内边距
                      minimumSize: Size.zero, // 移除最小尺寸限制
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      alignment: Alignment.center,
                    ),
                    child: Text(
                      "抹零".tr,
                      style: TextStyle(
                        color: onPressed == null ? CustomTheme.greyColor : CustomTheme.primaryColor,
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
