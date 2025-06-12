// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
// Project imports:
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum ActionButtonType {
  primary, // 主题颜色
  danger, // 警示颜色
  disabled, // 禁止颜色
  normal, // 默认颜色
  primaryOutline, // 确认边框
}

class DetailSpecItemBtn extends StatelessWidget {
  final String text;
  final SafetyNumber? price;
  final ActionButtonType type; // 类型
  final bool isDisabled; // 是否禁用
  final void Function()? onTap; // 点击

  DetailSpecItemBtn({
    super.key,
    required this.text,
    this.price,
    this.type = ActionButtonType.normal,
    this.isDisabled = false,
    this.onTap,
  });

  String get secondaryCurrency => price?.secondaryCurrency ?? '';

  // 定义一个 Map，将枚举类型映射到文本和颜色
  static Map<ActionButtonType, Map<String, dynamic>> actionButtonMap = {
    ActionButtonType.danger: {
      'textColor': CustomTheme.errorColor,
      'bgColor': CustomTheme.errorColor.shade900,
      'borderColor': CustomTheme.errorColor.shade900,
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
    ActionButtonType.primaryOutline: {
      'textColor': CustomTheme.primaryColor.shade900,
      'bgColor': CustomTheme.primaryColor.shade50,
      'borderColor': CustomTheme.primaryColor,
    },
  };

  final FontSizeController fontSizeController = Get.find<FontSizeController>();

  @override
  Widget build(BuildContext context) {
    // 根据 type 参数从 Map 中获取相应的文本和颜色
    final action = actionButtonMap[isDisabled ? ActionButtonType.disabled : type];

    return TextButton(
      onPressed: () {
        if (onTap != null) {
          onTap!();
        }
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
        minimumSize: Size(120.0, 40.0),
        backgroundColor: action?['bgColor'],
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        side: BorderSide(
          color: action?['borderColor'],
          width: 1,
        ),
      ),
      child: RichText(
        textAlign: TextAlign.start,
        textScaler: TextScaler.linear(fontSizeController.textScaler),
        text: TextSpan(
          style: TextStyle(
            fontSize: 14.0,
          ),
          children: [
            TextSpan(
              text: text,
              style: TextStyle(
                color: action?['textColor'],
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            if (price != null) ...[
              WidgetSpan(
                child: SizedBox(
                  width: 8.0,
                ),
              ),
              TextSpan(
                text: price?.primaryCurrency ?? '',
                style: TextStyle(
                  color: ActionButtonType.primaryOutline == type && action != null
                      ? action['textColor']
                      : CustomTheme.secondaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
            if (price != null && price!.secondaryCurrency.isNotEmpty) ...[
              WidgetSpan(
                child: SizedBox(width: 12.0),
              ),
              TextSpan(
                text: price?.secondaryCurrency ?? '',
                style: TextStyle(
                  color: CustomTheme.secondaryColor.shade800,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
