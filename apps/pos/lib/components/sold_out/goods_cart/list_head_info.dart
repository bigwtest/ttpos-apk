// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ListHeadInfo extends StatelessWidget {
  final int count;
  final bool isLoadingCancelAll;
  final void Function()? onTap; // 点击事件

  const ListHeadInfo({
    super.key,
    this.count = 0,
    this.isLoadingCancelAll = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0.scaleWidth,
      decoration: BoxDecoration(
        color: CustomTheme.primaryColor.shade300,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${'已售罄'.tr}: $count',
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          count > 0
              ? TextButton(
                  onPressed: () {
                    if (onTap != null) {
                      onTap!();
                    }
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(
                      right: 16.0.scalePadding,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(
                          4.0,
                        ),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLoadingCancelAll
                          ? Padding(
                              padding: EdgeInsets.only(right: 6.0),
                              child: SizedBox(
                                width: 14.0,
                                height: 14.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    CustomTheme.greyColor.shade300,
                                  ),
                                ),
                              ),
                            )
                          : SizedBox.shrink(),
                      Text(
                        '全部取消'.tr,
                        style: TextStyle(
                          color: CustomTheme.errorColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
