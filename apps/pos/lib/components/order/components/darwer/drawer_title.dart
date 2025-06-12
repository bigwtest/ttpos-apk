// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DrawerTitle extends StatelessWidget {
  final String title;
  const DrawerTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 26,
        left: 26,
        right: 26,
        bottom: 16,
      ),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: CustomTheme.secondaryColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
