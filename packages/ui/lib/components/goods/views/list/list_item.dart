// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_content.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_img.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_sold_out_tips.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class ListItem extends StatelessWidget {
  final GoodsProduct detail; // 商品详情
  final double imgWidth; // 图片宽度
  final bool imgMode; // 是否显示图片
  final bool isShowMake; // 是否显示制作中
  final List<SentKitchenProduct> sentKitchenProducts;
  final bool isSoldOutPage; // 是否为估清页面
  final void Function(GoodsProduct val, {GlobalKey? startKey, Offset? startPos})? onTap; // 点击

  const ListItem({
    super.key,
    required this.detail,
    this.imgMode = false,
    this.imgWidth = 200,
    this.isShowMake = false,
    this.sentKitchenProducts = const [],
    this.isSoldOutPage = false,
    this.onTap,
  });

  bool get isShowQuota => detail.limitNum > 0;

  // 限购显示判断
  SoldOutType? get soldOutType {
    if (isSoldOutPage) {
      // 估清页面的判断
      if (detail.soldOutType == FlavorsSoldOutType.soldOut) {
        return SoldOutType.allSoldOut;
      } else if (detail.soldOutType == FlavorsSoldOutType.partiallySoldOut) {
        return SoldOutType.partiallySoldOut;
      }
    } else {
      if (detail.isSoldOut) {
        return SoldOutType.soldOut;
      }
      // TODO: 根据后台字段，限购判断
      // else if (detail?.limitNumStatus == 1) {
      //   return SoldOutType.restrictedPurchase;
      // }
    }
    return null;
  }

  // 是否禁用
  bool get isDisabled => soldOutType != null && soldOutType != SoldOutType.partiallySoldOut;

  @override
  Widget build(BuildContext context) {
    // 为每个商品创建独立的GlobalKey
    final productKey = GlobalKey();
    Offset? startPos;
    //
    return InkWell(
      key: productKey,
      onTapDown: (details) {
        startPos = Offset(details.globalPosition.dx, details.globalPosition.dy - 64.0.scaleHeight);
      },
      onTap: () => onTap?.call(detail, startKey: productKey, startPos: startPos),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imgMode)
            ListItemImg(
              imgWidth: imgWidth,
              isDisabled: isDisabled,
              isShowMake: isShowMake,
              sentKitchenProducts: sentKitchenProducts,
              isShowQuota: isShowQuota,
              soldOutType: soldOutType,
              detail: detail,
            ),
          ListItemContent(
            imgWidth: imgWidth,
            imgMode: imgMode,
            isDisabled: isDisabled,
            isShowMake: isShowMake,
            sentKitchenProducts: sentKitchenProducts,
            isShowQuota: isShowQuota,
            soldOutType: soldOutType,
            detail: detail,
          ),
        ],
      ),
    );
  }
}
