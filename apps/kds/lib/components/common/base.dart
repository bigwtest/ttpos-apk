import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

class BaseView extends StatelessWidget {
  final String subtitle;
  final bool hasCancelButton;
  final Function? onPressed;
  const BaseView({
    super.key,
    required this.subtitle,
    this.hasCancelButton = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: 404,
        padding: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Text(
              '提示'.tr,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: CustomTheme.secondaryColor,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 18.0,
                color: CustomTheme.secondaryColor,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                if (hasCancelButton)
                  Expanded(
                    child: TtButton(
                      text: '取消'.tr,
                      buttonType: ActionButtonType.outline,
                      fontSize: 18.0,
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: TtButton(
                    text: '确定'.tr,
                    buttonType: ActionButtonType.primary,
                    fontSize: 18.0,
                    onTap: onPressed != null
                        ? () {
                            onPressed!();
                          }
                        : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
