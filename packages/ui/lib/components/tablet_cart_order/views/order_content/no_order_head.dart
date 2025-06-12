import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class NoOrderHead extends StatelessWidget {
  const NoOrderHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.0.scalePadding,
        horizontal: 10.0.scalePadding,
      ),
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
      ),
      child: Row(
        spacing: 10.0,
        children: [
          Expanded(
            child: Text(
              '商品名称'.tr,
              style: TextStyle(
                color: CustomTheme.greyColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 80.0.scaleWidth,
            child: Text(
              '单价'.tr,
              style: TextStyle(
                color: CustomTheme.greyColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 120.0.scaleWidth,
            child: Text(
              '数量'.tr,
              style: TextStyle(
                color: CustomTheme.greyColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 80.0.scaleWidth,
            child: Text(
              '金额'.tr,
              style: TextStyle(
                color: CustomTheme.greyColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
