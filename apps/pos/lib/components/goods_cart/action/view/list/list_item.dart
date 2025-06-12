// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum ActionButtonType {
  primary, // 主题颜色
  danger, // 警示颜色
  disabled, // 禁止颜色
}

class ListItem extends StatelessWidget {
  final String text;
  final ActionButtonType buttonType; // 类型
  final bool isDisabled; // 是否禁用
  final void Function()? onTap; // 点击

  const ListItem({
    super.key,
    required this.text,
    this.buttonType = ActionButtonType.primary,
    this.isDisabled = false,
    this.onTap,
  });

  // 定义一个 Map，将枚举类型映射到文本和颜色
  static Map<ActionButtonType, Map<String, dynamic>> actionButtonMap = {
    ActionButtonType.danger: {
      'textColor': CustomTheme.errorColor,
      'bgColor': CustomTheme.errorColor.shade900,
    },
    ActionButtonType.primary: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': CustomTheme.primaryColor.shade300,
    },
    ActionButtonType.disabled: {
      'textColor': CustomTheme.greyColor,
      'bgColor': CustomTheme.greyColor.shade300,
    },
  };

  @override
  Widget build(BuildContext context) {
    // 根据 type 参数从 Map 中获取相应的文本和颜色
    final action = actionButtonMap[isDisabled ? ActionButtonType.disabled : buttonType];
    //
    return SizedBox(
      width: 82.0,
      child: TextButton(
        onPressed: () {
          if (onTap != null) {
            onTap!();
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: action?['bgColor'],
          padding: const EdgeInsets.symmetric(
            vertical: 2.0,
            horizontal: 8.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                4.0,
              ),
            ),
          ),
        ),
        child: Text(
          text,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: action?['textColor'],
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
        ),
      ),
    );
  }
}
