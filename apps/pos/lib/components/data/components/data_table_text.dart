// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataTableText extends StatelessWidget {
  final String text;
  final String? type;
  final String? textAlign;
  final bool? isBold;

  const DataTableText({
    super.key,
    required this.text,
    this.type = 'td',
    this.textAlign = 'left',
    this.isBold = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: type == 'td' ? 8.0 : 10.0,
        vertical: type == 'td' ? 10.0 : 12.0,
      ),
      decoration: BoxDecoration(
        border: isBold!
            ? Border(
                right: BorderSide(
                  width: 1,
                  color: CustomTheme.greyColor.shade300,
                ),
              )
            : null,
      ),
      child: Text(
        text,
        textAlign: textAlign == 'left' ? TextAlign.left : TextAlign.right,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 12.0,
          color: CustomTheme.secondaryColor,
        ),
      ),
    );
  }
}
