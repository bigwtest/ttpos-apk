// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataAllText extends StatelessWidget {
  final String? label;
  final String? value;
  const DataAllText({super.key, this.label, this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label!,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: CustomTheme.secondaryColor.shade200,
          ),
        ),
        Text(
          value!,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: CustomTheme.secondaryColor,
          ),
        ),
      ],
    );
  }
}
