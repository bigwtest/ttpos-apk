// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ButtonComponents extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  final double fontSize;
  final String type;
  final void Function()? onPressed;
  final bool? isLoading;
  final double? height;
  final FontWeight? fontWeight;
  final double minWidth;
  final Color? disabledTextColor;
  final Color? disabledBackgroundColor;
  final Color? disabledBorderColor;
  ButtonComponents({
    super.key,
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
    required this.text,
    this.fontSize = 12,
    this.type = 'primary',
    this.onPressed,
    this.isLoading = false,
    this.height = 36.0, // Reduced from 32.0 to 28.0
    this.fontWeight = FontWeight.w400,
    this.minWidth = 64.0,
    this.disabledTextColor = const Color(0xFF9E9E9E),
    this.disabledBackgroundColor = const Color(0xFFE0E0E0),
    this.disabledBorderColor = const Color(0xFFE0E0E0),
  })  : backgroundColor = backgroundColor ?? _getBackgroundColor(type),
        textColor = textColor ?? _getTextColor(type),
        borderColor = borderColor ?? _getBorderColor(type);

  static Color _getBackgroundColor(String type) {
    switch (type) {
      case 'error':
        return CustomTheme.errorColor.shade900;
      case 'default':
        return Colors.white;
      case 'table':
        return CustomTheme.primaryColor.shade300;
      case 'plain':
        return Colors.white;
      default:
        return CustomTheme.primaryColor.shade600;
    }
  }

  static Color _getTextColor(String type) {
    switch (type) {
      case 'error':
        return CustomTheme.errorColor.shade500;
      case 'default':
        return CustomTheme.secondaryColor;
      case 'table':
        return CustomTheme.secondaryColor;
      case 'plain':
        return CustomTheme.secondaryColor;
      default:
        return CustomTheme.secondaryColor;
    }
  }

  static Color _getBorderColor(String type) {
    switch (type) {
      case 'error':
        return Colors.transparent;
      case 'default':
        return CustomTheme.secondaryColor.shade700;
      case 'table':
        return CustomTheme.primaryColor.shade300;
      case 'plain':
        return CustomTheme.secondaryColor.shade700;
      default:
        return CustomTheme.primaryColor.shade600;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        height: height!.scaleHeight,
        constraints: BoxConstraints(
          minWidth: minWidth.scaleWidth,
        ),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: isLoading == true ? disabledBackgroundColor! : backgroundColor,
            foregroundColor: isLoading == true ? disabledTextColor! : textColor,
            side: BorderSide(
              width: 1,
              color: isLoading == true ? disabledBorderColor! : borderColor,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)), // Reduced border radius
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16), // Reduced padding
          ),
          onPressed: () {
            if (isLoading == true) {
              return;
            }
            onPressed!();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 6.0,
            children: [
              if (isLoading == true)
                SizedBox(
                  width: 12.0,
                  height: 12.0,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      disabledTextColor!,
                    ),
                  ),
                ),
              Text(
                text,
                style: TextStyle(
                  color: isLoading == true ? disabledTextColor! : textColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
