// Flutter imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_make.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_quota.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_sold_out.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_sold_out_tips.dart';
import 'package:ttpos_ui/components/tt_empty/tt_img_empty.dart';

class ListItemImg extends StatelessWidget {
  final double imgWidth;
  final bool isDisabled; // 禁止点击
  final bool isShowMake; // 是否显示制作中
  final List<SentKitchenProduct> sentKitchenProducts;
  final bool isShowQuota; // 是否显示限购
  final SoldOutType? soldOutType; // 是否售罄样式
  final GoodsProduct? detail; // 商品详情

  const ListItemImg({
    super.key,
    this.imgWidth = 200,
    this.isDisabled = false,
    this.isShowMake = false,
    this.sentKitchenProducts = const [],
    this.isShowQuota = true,
    this.soldOutType, // 默认使用 'soldOut'
    this.detail,
  });

  // 模拟图片路径 => https://picsum.photos/200/300
  // 计算图片滚动高度
  get imgHeight => imgWidth * 0.75;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: isDisabled ? 0.6 : 1,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ), // 设置圆角半径
            child: CachedNetworkImage(
              imageUrl: detail?.image ?? '',
              width: imgWidth,
              height: imgHeight,
              fit: BoxFit.cover,
              placeholder: (context, url) => TtImgEmpty(
                width: imgWidth,
                height: imgHeight,
              ),
              errorWidget: (context, url, error) => TtImgEmpty(
                width: imgWidth,
                height: imgHeight,
              ),
            ),
          ),
        ),
        // 限购显示
        isShowQuota
            ? ListItemQuota(
                isDisabled: isDisabled,
                count: detail?.limitNum ?? 0,
              )
            : SizedBox.shrink(),
        // 已售罄提示
        soldOutType != null
            ? ListItemSoldOut(
                type: soldOutType!,
              )
            : SizedBox.shrink(),
        // 制作中
        isShowMake &&
                sentKitchenProducts.any(
                  (item) => item.productPackageUuid == detail?.uuid,
                )
            ? ListItemMake(
                detail: sentKitchenProducts.firstWhere((item) => item.productPackageUuid == detail?.uuid),
                isDisabled: isDisabled,
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
