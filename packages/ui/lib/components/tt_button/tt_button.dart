import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum ActionButtonType {
  primary, // 主题颜色
  secondary, // 次要颜色
  secondaryLight, // 次要颜色浅色
  normal, // 默认颜色
  disabled, // 禁用
  outline, // 边框
  error, // 错误颜色
  primaryOutline, // 确认边框
}

enum SizeButtonType {
  small, // 小
  normal, // 正常
  large, // 较大
  huge; // 大
}

class TtButton extends StatelessWidget {
  final String text;
  final Widget? iconWidget;
  final Widget? textWidget;
  final double? fontSize;
  final double? height;
  final bool isLoading;
  final bool isDisabled; // 是否禁用
  final SizeButtonType sizeType; // 按钮大小
  final ActionButtonType buttonType; // 类型
  final FontWeight? fontWeight; // 字体粗细
  final BorderRadiusGeometry? borderRadius; // 字体粗细
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap; // 点击

  TtButton({
    super.key,
    required this.text,
    this.iconWidget,
    this.textWidget,
    this.isLoading = false,
    this.isDisabled = false,
    this.fontSize,
    this.height,
    this.fontWeight,
    this.sizeType = SizeButtonType.normal,
    this.buttonType = ActionButtonType.primary,
    this.borderRadius,
    this.padding,
    this.onTap,
  });

  // 定义一个 Map，将枚举类型映射到文本和颜色
  static Map<ActionButtonType, Map<String, dynamic>> actionButtonMap = {
    ActionButtonType.primary: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': CustomTheme.primaryColor,
      'borderColor': CustomTheme.primaryColor,
    },
    ActionButtonType.secondary: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': CustomTheme.primaryColor.shade300,
      'borderColor': CustomTheme.primaryColor.shade300,
    },
    ActionButtonType.secondaryLight: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': CustomTheme.greyColor.shade100,
      'borderColor': CustomTheme.greyColor.shade100,
    },
    ActionButtonType.normal: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': Colors.white,
      'borderColor': CustomTheme.secondaryColor.shade300,
    },
    ActionButtonType.error: {
      'textColor': CustomTheme.errorColor,
      'bgColor': CustomTheme.errorColor.shade200,
      'borderColor': CustomTheme.errorColor.shade50,
    },
    ActionButtonType.disabled: {
      'textColor': Colors.grey,
      'bgColor': Colors.grey.shade300,
      'borderColor': Colors.grey.shade300,
    },
    ActionButtonType.outline: {
      'textColor': CustomTheme.secondaryColor,
      'bgColor': Colors.white,
      'borderColor': CustomTheme.secondaryColor.shade300,
    },
    ActionButtonType.primaryOutline: {
      'textColor': CustomTheme.primaryColor.shade900,
      'bgColor': CustomTheme.primaryColor.shade50,
      'borderColor': CustomTheme.primaryColor,
    },
  };

  // 大小
  final Map<SizeButtonType, Map<String, dynamic>> sizeButtonMap = {
    SizeButtonType.small: {
      'height': 36.0.scaleHeight,
      'fontSize': 12.0,
      'padding': EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 14.0.scalePadding,
      ),
      'borderRadius': BorderRadius.all(
        Radius.circular(4.0),
      ),
      'fontWeight': FontWeight.w400,
    },
    SizeButtonType.normal: {
      'height': 40.0.scaleHeight,
      'fontSize': 14.0,
      'padding': EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 16.0.scalePadding,
      ),
      'borderRadius': BorderRadius.all(
        Radius.circular(4.0),
      ),
      'fontWeight': FontWeight.w400,
    },
    SizeButtonType.large: {
      'height': 48.0.scaleHeight,
      'fontSize': 16.0,
      'padding': EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 16.0.scalePadding,
      ),
      'borderRadius': BorderRadius.all(
        Radius.circular(4.0),
      ),
      'fontWeight': FontWeight.w400,
    },
    SizeButtonType.huge: {
      'height': 56.0.scaleHeight,
      'fontSize': 16.0,
      'padding': EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 16.0.scalePadding,
      ),
      'borderRadius': BorderRadius.all(
        Radius.circular(6.0),
      ),
      'fontWeight': FontWeight.w400,
    },
  };

  @override
  Widget build(BuildContext context) {
    // 根据 type 参数从 Map 中获取相应的文本和颜色
    final action = actionButtonMap[isDisabled ? ActionButtonType.disabled : buttonType];
    final size = sizeButtonMap[sizeType];

    return SizedBox(
      height: height ?? size?['height'],
      child: TextButton(
        onPressed: isLoading ? null : onTap,
        style: TextButton.styleFrom(
          minimumSize: Size(0, height ?? size?['height']),
          backgroundColor: action?['bgColor'],
          padding: padding ?? size?['padding'],
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? size?['borderRadius'],
          ),
          side: BorderSide(
            color: action?['borderColor'],
            width: 1,
          ),
        ),
        child: Row(
          spacing: 6.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading)
              SizedBox(
                width: fontSize ?? size?['fontSize'],
                height: fontSize ?? size?['fontSize'],
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    CustomTheme.greyColor.shade300,
                  ),
                ),
              ),
            if (iconWidget != null) iconWidget!,
            textWidget ??
                Text(
                  text,
                  style: TextStyle(
                    color: action?['textColor'],
                    fontSize: fontSize ?? size?['fontSize'],
                    fontWeight: fontWeight ?? size?['fontWeight'],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
          ],
        ),
      ),
    );
  }
}
