// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DashedBorder extends CustomPainter {
  DashedBorder({
    this.dashWidth = 5,
    this.dashSpace = 3,
    this.color,
  });
  final double dashWidth;
  final double dashSpace;
  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    double startX = 0;
    final paint = Paint()
      ..color = color ?? CustomTheme.greyColor.shade300
      ..strokeWidth = 1;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
