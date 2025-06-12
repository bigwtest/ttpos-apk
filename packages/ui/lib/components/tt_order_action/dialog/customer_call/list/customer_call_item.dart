import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CustomerCallItem extends StatelessWidget {
  final String title; // 大标题
  final String? subtitle; // 小标题
  final String? description; // 描述
  final List<Widget> actions; // 操作按钮列表
  final void Function()? onTap; // 点击

  const CustomerCallItem({
    super.key,
    this.title = '',
    this.subtitle,
    this.description,
    this.actions = const [],
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        10.0.scalePadding,
      ),
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
        borderRadius: BorderRadius.circular(
          6.0,
        ),
      ),
      child: Row(
        spacing: 8.0.scalePadding,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              spacing: 2.0,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                if (description != null)
                  Text(
                    description ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: CustomTheme.greyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ],
            ),
          ),
          Row(
            spacing: 8.0.scalePadding,
            mainAxisSize: MainAxisSize.min,
            children: actions,
          ),
        ],
      ),
    );
  }
}
