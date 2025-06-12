// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
// Model imports:
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_make.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_quota_con.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_sold_out.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_sold_out_tips.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ListItemContent extends StatelessWidget {
  final bool imgMode; // 是否显示图片
  final bool isDisabled; // 禁止点击
  final bool isShowMake; // 是否显示制作中
  final List<SentKitchenProduct> sentKitchenProducts;
  final bool isShowQuota; // 是否显示限购
  final SoldOutType? soldOutType; // 是否售罄样式
  final double imgWidth; // 宽度
  final GoodsProduct? detail; // 商品详情

  const ListItemContent({
    super.key,
    this.imgMode = true,
    this.isDisabled = false,
    this.isShowMake = false,
    this.sentKitchenProducts = const [],
    this.isShowQuota = true,
    this.soldOutType, // 默认使用 'soldOut'
    this.imgWidth = 200,
    this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: isDisabled ? 0.6 : 1,
          child: Container(
            height: 104.0.scaleHeight,
            width: imgWidth,
            decoration: BoxDecoration(
              color: CustomTheme.greyColor.shade100,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  8.0,
                ),
                bottomRight: Radius.circular(
                  8.0,
                ),
                // 根据是否为图片模式判断圆角
                topLeft: Radius.circular(!imgMode ? 8.0 : 0),
                topRight: Radius.circular(!imgMode ? 8.0 : 0),
              ),
            ),
            margin: EdgeInsets.only(
              top: !imgMode ? 4.0 : 0,
              right: !imgMode ? 4.0 : 0,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 8.0,
            ),
            child: Column(
              spacing: 4.0,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    detail?.localeName.translate ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        detail?.price.primaryCurrency ?? '',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: CustomTheme.errorColor,
                        ),
                      ),
                    ),
                    if (detail?.price.secondaryCurrency.isNotEmpty ?? false)
                      Obx(
                        () => Text(
                          detail?.price.secondaryCurrency ?? '',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: CustomTheme.greyColor,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // 限购显示
        !imgMode && isShowQuota
            ? ListItemQuotaCon(
                isDisabled: isDisabled,
                detail: detail,
              )
            : SizedBox.shrink(),
        // 已售罄提示
        !imgMode && soldOutType != null
            ? ListItemSoldOut(
                type: soldOutType!,
              )
            : SizedBox.shrink(),
        // 制作中
        !imgMode &&
                isShowMake &&
                sentKitchenProducts.any(
                  (item) => item.productPackageUuid == detail?.uuid,
                )
            ? ListItemMake(
                detail: sentKitchenProducts.firstWhere((item) => item.productPackageUuid == detail?.uuid),
                isDisabled: isDisabled,
                type: MakeType.lightColor,
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
