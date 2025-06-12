// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum ActionButtonType {
  primary, // 主题颜色
  outlinePrimary, // 线性颜色
  disabled, // 禁止颜色
  normal, // 默认颜色
}

class DeskOpenDialogHeaderButton extends StatelessWidget {
  final String text;
  final ActionButtonType? type; // 类型
  final bool isDisabled; // 是否禁用
  final void Function()? onTap; // 点击

  const DeskOpenDialogHeaderButton({
    super.key,
    required this.text,
    this.type = ActionButtonType.normal,
    this.isDisabled = false,
    this.onTap,
  });

  // 定义一个 Map，将枚举类型映射到文本和颜色
  static Map<ActionButtonType, Map<String, dynamic>> actionButtonMap = {
    ActionButtonType.outlinePrimary: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': CustomTheme.primaryColor.shade50,
      'borderColor': CustomTheme.primaryColor,
    },
    ActionButtonType.primary: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': CustomTheme.primaryColor.shade300,
      'borderColor': CustomTheme.primaryColor.shade300,
    },
    ActionButtonType.disabled: {
      'textColor': CustomTheme.greyColor,
      'bgColor': CustomTheme.greyColor.shade300,
      'borderColor': CustomTheme.greyColor.shade300,
    },
    ActionButtonType.normal: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': Colors.white,
      'borderColor': CustomTheme.secondaryColor.shade300,
    },
  };

  @override
  Widget build(BuildContext context) {
    // 根据 type 参数从 Map 中获取相应的文本和颜色
    final action = actionButtonMap[isDisabled ? ActionButtonType.disabled : type];

    return SizedBox(
      height: 40.0.scaleHeight,
      child: TextButton(
        onPressed: () {
          if (onTap != null) {
            onTap!();
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: action?['bgColor'],
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
          side: BorderSide(
            color: action?['borderColor'],
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: action?['textColor'],
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
