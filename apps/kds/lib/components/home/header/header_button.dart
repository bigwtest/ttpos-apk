import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HeaderButton extends StatelessWidget {
  const HeaderButton({
    super.key,
    required this.text,
    required this.onTap,
    this.active = false,
  });
  final String text;
  final Function() onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: active ? CustomTheme.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: active ? CustomTheme.primaryColor : Colors.white,
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            color: active ? CustomTheme.secondaryColor : Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
