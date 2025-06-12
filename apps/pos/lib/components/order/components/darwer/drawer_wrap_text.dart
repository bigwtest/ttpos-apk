// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DrawerWrapText extends StatelessWidget {
  final double itemWidth;
  final String title;
  final String text;
  final String? subText;
  final int? payStatus;
  const DrawerWrapText({
    super.key,
    required this.itemWidth,
    required this.text,
    required this.title,
    this.subText,
    this.payStatus,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: itemWidth,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12.0,
                color: Color.fromRGBO(36, 22, 11, .65),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 4.0),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 4.0,
              runSpacing: 4.0,
              children: [
                if (payStatus == 3)
                  Text(
                    '异常'.tr,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: CustomTheme.errorColor.shade500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (subText != null)
                  Text(
                    subText!,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: CustomTheme.greyColor,
                      fontWeight: FontWeight.w600,
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
