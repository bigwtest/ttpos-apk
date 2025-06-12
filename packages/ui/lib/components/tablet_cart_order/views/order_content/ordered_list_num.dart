import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderedListNum extends StatelessWidget {
  final int finishedNum;
  final int num;
  final bool isShowStatus; // 是否显示状态

  const OrderedListNum({
    super.key,
    this.finishedNum = 0,
    this.num = 0,
    this.isShowStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (isShowStatus) ...[
              Text(
                finishedNum.toString(),
                style: TextStyle(
                  color: CustomTheme.greenColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '/',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
            Text(
              num.toString(),
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        if (isShowStatus)
          Text(
            finishedNum == num ? '已完成'.tr : '制作中'.tr,
            style: TextStyle(
              color: CustomTheme.greyColor,
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
            ),
          ),
      ],
    );
  }
}
