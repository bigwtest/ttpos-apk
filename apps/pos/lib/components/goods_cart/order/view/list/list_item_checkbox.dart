// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ListItemCheckbox extends StatelessWidget {
  const ListItemCheckbox({
    super.key,
    this.isChecked = false,
    this.onChangeCheckbox,
  });

  final bool isChecked;
  final void Function(bool)? onChangeCheckbox; // 点击Checkbox

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.0, // 限制高度
      padding: EdgeInsets.zero, // 移除内边距
      margin: EdgeInsets.zero, // 移除外边距
      child: Row(
        children: [
          Transform.scale(
            scale: 0.9, // 缩小复选框大小
            child: Checkbox(
              value: isChecked,
              side: BorderSide(
                color: CustomTheme.greyColor.shade50,
                width: 1.2,
              ),
              fillColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return CustomTheme.primaryColor;
                  }
                  return Colors.white;
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
              visualDensity: const VisualDensity(
                horizontal: -4,
                vertical: -4,
              ), // 使用负值来减小空间
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // 缩小点击区域
              onChanged: (value) {
                onChangeCheckbox?.call(value ?? false);
              },
            ),
          ),
          SizedBox(
            width: 3.0,
          ),
        ],
      ),
    );
  }
}
