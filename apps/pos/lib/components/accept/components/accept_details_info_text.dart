// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptDetailsInfoText extends StatelessWidget {
  final String text;
  final String? subText;

  const AcceptDetailsInfoText({
    super.key,
    required this.text,
    this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Row(
        children: [
          Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: CustomTheme.secondaryColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (subText != null)
            Text(
              subText!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: CustomTheme.errorColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
        ],
      ),
    );
  }
}
