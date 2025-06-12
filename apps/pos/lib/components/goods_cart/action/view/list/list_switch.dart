// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ListSwitch extends StatefulWidget {
  const ListSwitch({
    super.key,
    this.onChanged,
    required this.value,
  });

  final void Function(bool value)? onChanged;
  final bool value;

  @override
  State<ListSwitch> createState() => _ListSwitchState();
}

class _ListSwitchState extends State<ListSwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 8.0,
        bottom: 2.0,
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        spacing: -5, // 设置负间距来减小元素之间的距离
        children: [
          Text(
            '打包'.tr,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 12.0,
            ),
          ),
          Transform.scale(
            scaleX: 0.8,
            scaleY: 0.7,
            child: CupertinoSwitch(
              value: widget.value, // 当前开关状态
              onChanged: (value) {
                if (widget.onChanged != null) {
                  widget.onChanged!(value);
                }
              },
              trackOutlineWidth: const WidgetStatePropertyAll(0),
              activeTrackColor: CustomTheme.primaryColor,
              inactiveTrackColor: CustomTheme.greyColor.shade800, // 未选中时的轨道颜色
              inactiveThumbColor: Colors.white, // 未选中时的拇指颜色
              // padding: EdgeInsets.zero, // 内边距
              // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // 缩小触摸目标
            ),
          ),
        ],
      ),
    );
  }
}
