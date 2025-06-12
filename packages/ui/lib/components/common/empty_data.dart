import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/theme/theme.dart';

class EmptyDataView extends StatelessWidget {
  final double imgWidth;
  final double fontSize;
  final String? text;
  final Widget? icon;
  final bool isSearch;

  const EmptyDataView({
    super.key,
    this.icon,
    this.imgWidth = 62.0,
    this.fontSize = 12.0,
    this.text,
    this.isSearch = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10.0,
        children: [
          icon != null
              ? icon!
              : isSearch
                  ? Image.asset(
                      'packages/ttpos_ui/assets/images/search_keyword_empty.png',
                      width: imgWidth,
                      height: imgWidth,
                    )
                  : SvgPicture.asset(
                      'packages/ttpos_ui/assets/images/empty.svg',
                      width: imgWidth,
                      height: imgWidth,
                    ),
          Text(
            text ?? (isSearch ? '暂无查询结果'.tr : '暂无数据'.tr),
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
