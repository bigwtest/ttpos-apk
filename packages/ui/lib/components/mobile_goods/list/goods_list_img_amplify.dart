import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/tt_empty/tt_img_empty.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsListImgAmplify extends StatelessWidget {
  final String image;

  const GoodsListImgAmplify({
    super.key,
    this.image = '',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // 允许超出 Stack 边界的部分显示
      children: [
        Container(
          width: 358.0.scaleHeight,
          height: 358.0.scaleHeight,
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.scalePadding,
            vertical: 16.0.scalePadding,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          child: CachedNetworkImage(
            imageUrl: image,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            placeholder: (context, url) => TtImgEmpty(
              width: double.infinity,
              height: double.infinity,
              iconSize: 100.0,
            ),
            errorWidget: (context, url, error) => TtImgEmpty(
              width: double.infinity,
              height: double.infinity,
              iconSize: 100.0,
            ),
          ),
        ),
        // 关闭按钮
        Positioned(
          left: 0,
          right: 0,
          bottom: -64.0,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // 背景颜色
                shape: BoxShape.circle, // 圆形背景
              ),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Iconfont.close,
                  size: 24,
                  color: CustomTheme.secondaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
