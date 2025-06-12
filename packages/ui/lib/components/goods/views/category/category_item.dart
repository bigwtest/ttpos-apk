// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

// Package imports:

class CategoryItem extends StatelessWidget {
  final String text;
  final bool isActive;
  final void Function()? onTap; // 点击事件

  const CategoryItem({
    super.key,
    required this.text,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: CustomTheme.primaryColor,
            style: isActive ? BorderStyle.solid : BorderStyle.none,
          ),
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
            vertical: 10.0,
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
            color: isActive ? CustomTheme.primaryColor : CustomTheme.secondaryColor,
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
