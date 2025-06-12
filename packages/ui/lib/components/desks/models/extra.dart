import 'package:flutter/material.dart';

class DeskTotalItemModel {
  final String label;
  final bool enableColor;
  final Color? color;

  const DeskTotalItemModel({
    required this.label,
    this.enableColor = true,
    this.color,
  });
}
