// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ListItemQuota extends StatelessWidget {
  final bool isDisabled; // 禁止点击
  final int count; // 商品详情

  const ListItemQuota({
    super.key,
    this.isDisabled = false,
    this.count = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      child: Opacity(
        opacity: isDisabled ? 0.6 : 1,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.99, -0.15),
              end: Alignment(-0.99, 0.15),
              colors: [CustomTheme.errorColor, CustomTheme.primaryColor.shade800],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6.0),
              bottomRight: Radius.circular(6.0),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 4.0,
          ),
          child: Text(
            '限购@count份'.trParams({
              'count': count.toString(),
            }),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
