// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DetailSpecItem extends StatelessWidget {
  final String title;
  final bool isSelectAll; // 是否为编辑模式
  final bool isButtonAll; // 显示全部按钮
  final void Function()? onSelectAll; // 点击
  final Widget? specItemList;

  const DetailSpecItem({
    super.key,
    this.isSelectAll = false,
    this.isButtonAll = true,
    required this.title,
    this.onSelectAll,
    this.specItemList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            isSelectAll
                ? TextButton(
                    onPressed: () {
                      if (onSelectAll != null) {
                        onSelectAll!();
                      }
                    },
                    child: Text(
                      isButtonAll ? '全选'.tr : '全不选'.tr,
                      style: TextStyle(
                        color: CustomTheme.primaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
        SizedBox(
          height: 4.0,
        ),
        specItemList ?? SizedBox.shrink(),
      ],
    );
  }
}
