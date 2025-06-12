// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:

import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

class BaseView extends StatelessWidget {
  final String subtitle;
  final bool hasCancelButton;
  final Function? onPressed;
  final bool? isLoading;
  const BaseView({
    super.key,
    required this.subtitle,
    this.hasCancelButton = true,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364.48,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16.0,
        children: [
          Text(
            '提示'.tr,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: CustomTheme.secondaryColor,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12.06,
              color: CustomTheme.secondaryColor,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              spacing: 16.0,
              children: [
                if (hasCancelButton)
                  Expanded(
                    child: TtButton(
                      text: '取消'.tr,
                      buttonType: ActionButtonType.outline,
                      fontWeight: FontWeight.w600,
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                Expanded(
                  child: TtButton(
                    text: '确定'.tr,
                    buttonType: ActionButtonType.primary,
                    fontWeight: FontWeight.w600,
                    isLoading: isLoading ?? false,
                    onTap: onPressed != null
                        ? () {
                            if (isLoading == true) {
                              return;
                            }
                            onPressed!();
                          }
                        : null,
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
