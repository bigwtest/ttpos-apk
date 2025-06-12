import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/mobile_goods/list/goods_list_img_amplify.dart';
import 'package:ttpos_ui/components/tt_empty/tt_img_empty.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsDetailView extends StatelessWidget {
  final GoodsProduct? detail;
  final List<Widget> widgetSpec;
  final Widget widgetFoot;
  final double price;

  const GoodsDetailView({
    super.key,
    this.detail,
    this.price = 0.0,
    this.widgetSpec = const [],
    this.widgetFoot = const SizedBox.shrink(),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // 允许超出 Stack 边界的部分显示
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.scalePadding,
            vertical: 24.0.scalePadding,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              spacing: 24.0.scalePadding,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 信息
                Row(
                  spacing: 10.0,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.dialog(
                          Dialog(
                            child: GoodsListImgAmplify(
                              image: detail?.image ?? '',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              6.0,
                            ),
                          ),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: detail?.image ?? '',
                          width: 72.0.scaleHeight,
                          height: 72.0.scaleHeight,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => TtImgEmpty(
                            width: 72.0.scaleHeight,
                            height: 72.0.scaleHeight,
                            iconSize: 32.0,
                          ),
                          errorWidget: (context, url, error) => TtImgEmpty(
                            width: 72.0.scaleHeight,
                            height: 72.0.scaleHeight,
                            iconSize: 32.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        detail?.localeName.translate ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                // 规格
                SizedBox(
                  height: 260.0,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 16.0,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widgetSpec,
                    ),
                  ),
                ),
                // 操作
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 4.0,
                      children: [
                        Text(
                          price.primaryCurrency,
                          style: TextStyle(
                            color: CustomTheme.errorColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (price.secondaryCurrency.isNotEmpty)
                          Text(
                            price.secondaryCurrency,
                            style: TextStyle(
                              color: CustomTheme.greyColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                      ],
                    ),
                    widgetFoot,
                  ],
                ),
              ],
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
