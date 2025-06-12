// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

// Package imports:

class ListHeader extends StatelessWidget {
  const ListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: CustomTheme.greyColor.shade300,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '商品名称'.tr,
              style: TextStyle(
                color: CustomTheme.greyColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Container(
            width: 98,
            alignment: Alignment.center,
            child: Text(
              '数量'.tr,
              style: TextStyle(
                color: CustomTheme.greyColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Container(
            width: 98,
            alignment: Alignment.centerRight,
            child: Text(
              '小计'.tr,
              style: TextStyle(
                color: CustomTheme.greyColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
