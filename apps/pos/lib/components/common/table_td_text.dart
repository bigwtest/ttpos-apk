// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TableTdText extends StatelessWidget {
  final String? text;
  final String? subText;
  final int? maxLines;
  final double? width;
  final double? fontSize;
  const TableTdText({
    super.key,
    this.text,
    this.maxLines = 2,
    this.width = 230.0,
    this.fontSize = 12,
    this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width?.scaleWidth ?? double.infinity,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text ?? '-',
            overflow: TextOverflow.ellipsis,
            maxLines: maxLines,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: fontSize,
              color: CustomTheme.secondaryColor,
            ),
          ),
          if (subText != null && subText != '')
            Text(
              subText ?? '-',
              overflow: TextOverflow.ellipsis,
              maxLines: maxLines,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 10.0,
                color: CustomTheme.greyColor,
              ),
            ),
        ],
      ),
    );
  }
}
