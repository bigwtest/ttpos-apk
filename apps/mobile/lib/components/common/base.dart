// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

class BaseView extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool hasCancelButton;
  final Function? onPressed;
  final bool? isLoading;
  const BaseView({
    super.key,
    required this.title,
    required this.subtitle,
    this.hasCancelButton = true,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
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
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: CustomTheme.secondaryColor,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16.0,
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
                      fontSize: 16.0,
                      buttonType: ActionButtonType.outline,
                      height: 48.0,
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                Expanded(
                  child: TtButton(
                    text: '确定'.tr,
                    buttonType: ActionButtonType.primary,
                    fontSize: 16.0,
                    isLoading: isLoading ?? false,
                    height: 48.0,
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
