// Flutter imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/tt_empty/tt_img_empty.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DetailInfo extends StatelessWidget {
  final double imgWidth;
  final GoodsProduct? detail;

  const DetailInfo({
    super.key,
    this.imgWidth = 100,
    this.detail,
  });

  get width => imgWidth.scaleWidth;
  get height => (imgWidth * 0.75).scaleHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(6.0)), // 设置圆角半径
          child: CachedNetworkImage(
            imageUrl: detail?.image ?? '',
            width: width,
            height: height,
            fit: BoxFit.cover,
            placeholder: (context, url) => TtImgEmpty(
              width: width,
              height: height,
              iconSize: 50.0,
            ),
            errorWidget: (context, url, error) => TtImgEmpty(
              width: width,
              height: height,
              iconSize: 50.0,
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detail?.localeName.translate ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Text(
                    '${'单价'.tr}:',
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    detail?.price.primaryCurrency ?? '',
                    style: TextStyle(
                      color: CustomTheme.errorColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (detail?.price.secondaryCurrency != null) ...[
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      detail?.price.secondaryCurrency ?? '',
                      style: TextStyle(
                        color: CustomTheme.secondaryColor.shade200,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ],
              ),
              SizedBox(
                height: 2.0,
              ),
              Row(
                children: [
                  Text(
                    '${'单位'.tr}:',
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    detail?.unit.translate ?? '',
                    style: TextStyle(
                      color: CustomTheme.errorColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
