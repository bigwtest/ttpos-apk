// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TtImgEmpty extends StatelessWidget {
  final double width;
  final double height;
  final double iconSize;

  const TtImgEmpty({
    super.key,
    this.width = 200.0,
    this.height = 200.0,
    this.iconSize = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: CustomTheme.primaryColor.shade50,
      ),
      child: Center(
        child: Image.asset(
          'packages/ttpos_ui/assets/images/tt_empty.png',
          width: width,
          height: height,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: width,
              height: height,
              color: CustomTheme.primaryColor.shade50,
            );
          },
        ),
      ),
    );
  }
}
