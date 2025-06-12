// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataTitle extends StatelessWidget {
  final String title;
  const DataTitle({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: CustomTheme.secondaryColor,
          fontSize: 13.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
