import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/tt_checkbox/tt_checkbox.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskDiscountsCheckbox extends StatelessWidget {
  final String text;
  final bool isChecked;
  final void Function()? onTap;

  const DeskDiscountsCheckbox({
    super.key,
    required this.text,
    this.isChecked = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        spacing: 4.0,
        mainAxisSize: MainAxisSize.min,
        children: [
          TtCheckbox(
            isChecked: isChecked,
            onChanged: (val) {
              onTap?.call();
            },
          ),
          Text(
            text,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
