// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DrawerSubTitle extends StatelessWidget {
  final String title;
  const DrawerSubTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Row(
        children: [
          Container(
            width: 4.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: CustomTheme.primaryColor.shade600,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          const SizedBox(width: 16.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: CustomTheme.secondaryColor.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
