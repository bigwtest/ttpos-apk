// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TopUpTableText extends StatelessWidget {
  final String text;
  final String? type;
  final String? textAlign;
  final bool? isBold;
  final double? height;

  const TopUpTableText({
    super.key,
    required this.text,
    this.type = 'td',
    this.textAlign = 'left',
    this.isBold = true,
    this.height,
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
                  color: CustomTheme.greyColor.shade200,
                ),
              )
            : null,
      ),
      child: SizedBox(
        height: height,
        child: Wrap(
          runAlignment: WrapAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
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
            ),
          ],
        ),
      ),
    );
  }
}
