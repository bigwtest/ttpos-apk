import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CallViewItem extends StatelessWidget {
  const CallViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 24,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  'A10',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
                Text(
                  '呼叫'.tr,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          TtButton(
            text: '已处理'.tr,
            buttonType: ActionButtonType.primary,
            height: 56.0,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            onTap: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
