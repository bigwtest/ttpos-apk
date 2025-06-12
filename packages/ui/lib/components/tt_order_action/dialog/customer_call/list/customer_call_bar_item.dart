import 'package:flutter/material.dart';

class CustomerCallBarItem extends StatelessWidget {
  final String title; // 标题
  final num count; // 数字角标
  final double? fontSize; //
  final Color? color; //
  final EdgeInsetsGeometry margin;

  const CustomerCallBarItem({
    super.key,
    this.title = '',
    this.count = 0,
    this.fontSize,
    this.color,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Badge(
        offset: Offset(10, -8),
        isLabelVisible: count > 0,
        label: Text(
          count > 99 ? '99+' : '$count',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
