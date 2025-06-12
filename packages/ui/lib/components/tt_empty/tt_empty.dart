import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TtEmpty extends StatelessWidget {
  final double imgWidth;
  final double fontSize;
  final String? text;
  final Widget? icon;

  const TtEmpty({
    super.key,
    this.icon,
    this.imgWidth = 62.0,
    this.fontSize = 12.0,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 10.0,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon != null
              ? icon!
              : SvgPicture.asset(
                  'packages/ttpos_ui/assets/images/empty.svg',
                  width: imgWidth,
                  height: imgWidth,
                ),
          Text(
            text ?? '暂无数据'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize,
              color: CustomTheme.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
