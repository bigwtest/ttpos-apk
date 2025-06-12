import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HeaderButton extends StatelessWidget {
  const HeaderButton({
    super.key,
    required this.text,
    this.onTap,
    this.primary = false,
    this.icon,
  });
  final String text;
  final Function()? onTap;
  final bool primary;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: primary ? CustomTheme.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: primary ? CustomTheme.primaryColor : Colors.white,
            width: 1,
          ),
        ),
        child: Row(
          spacing: 8,
          children: [
            icon!,
            Text(
              text,
              style: TextStyle(
                fontSize: 13.0,
                color: primary ? CustomTheme.secondaryColor : Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
