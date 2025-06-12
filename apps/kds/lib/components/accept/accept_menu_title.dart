import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptMenuTitle extends StatelessWidget {
  const AcceptMenuTitle({
    super.key,
    required this.title,
    required this.type,
    required this.diningMethod,
  });

  final String title;
  final int type;
  final int diningMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: CustomTheme.secondaryColor,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (type == 1 && diningMethod == 1) ...[
            const SizedBox(width: 10),
            Text(
              '(${'打包'.tr})',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: CustomTheme.primaryColor,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
