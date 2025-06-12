// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

// Package imports:

class CategoryItemSolid extends StatelessWidget {
  final bool isActive;
  final void Function()? onTap; // 点击事件
  final String text;
  const CategoryItemSolid({
    super.key,
    this.isActive = false,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.0.scaleHeight,
      decoration: BoxDecoration(
        color: isActive ? CustomTheme.primaryColor.shade300 : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        border: Border.all(
          width: 1,
          color: CustomTheme.greyColor.shade300,
          style: isActive ? BorderStyle.none : BorderStyle.solid,
        ),
      ),
      child: TextButton(
        onPressed: () {
          if (onTap != null) {
            onTap!();
          }
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 6.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(0.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: CustomTheme.secondaryColor,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
