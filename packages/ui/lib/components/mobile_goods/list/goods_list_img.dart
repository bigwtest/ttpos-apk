import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_quota.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_sold_out.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_sold_out_tips.dart';
import 'package:ttpos_ui/components/tt_empty/tt_img_empty.dart';

class GoodsListImg extends StatelessWidget {
  final GoodsProduct detail; // 商品详情
  final double imgWidth;
  final bool isDisabled;
  final void Function()? onTap;

  const GoodsListImg({
    super.key,
    required this.detail,
    this.imgWidth = 104,
    this.isDisabled = false,
    this.onTap,
  });

  // 限购显示判断
  SoldOutType? get soldOutType {
    if (detail.isSoldOut) {
      return SoldOutType.soldOut;
    }
    // TODO: 根据后台字段，限购判断
    // else if (detail?.limitNumStatus == 1) {
    //   return SoldOutType.restrictedPurchase;
    // }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Opacity(
            opacity: detail.isSoldOut ? 0.6 : 1,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: detail.image,
                width: imgWidth,
                height: imgWidth,
                fit: BoxFit.cover,
                placeholder: (context, url) => TtImgEmpty(
                  width: imgWidth,
                  height: imgWidth,
                  iconSize: 50.0,
                ),
                errorWidget: (context, url, error) => TtImgEmpty(
                  width: imgWidth,
                  height: imgWidth,
                  iconSize: 50.0,
                ),
              ),
            ),
          ),
          // 限购显示
          if (detail.limitNum > 0)
            ListItemQuota(
              isDisabled: isDisabled,
              count: detail.limitNum,
            ),
          // 已售罄提示
          soldOutType != null
              ? ListItemSoldOut(
                  type: SoldOutType.soldOut,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
