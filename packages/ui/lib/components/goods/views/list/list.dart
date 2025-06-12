// Flutter imports:
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item.dart';
// Controllers
import 'package:ttpos_ui/controllers/card_style_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class GoodsList extends StatelessWidget {
  final bool isSoldOutPage; // 是否为估清页面
  final bool isShowMake; // 是否显示制作中
  final List<SentKitchenProduct> sentKitchenProducts;
  final double maxWidth; // 最大宽度
  final bool hasMore;
  final List<GoodsProduct> goodsList; // 商品列表
  final void Function()? loadNextPage; // 加载下一页
  final void Function(GoodsProduct detail, {GlobalKey? startKey, Offset? startPos})? onDetailChange; // 点击

  GoodsList({
    super.key,
    this.isSoldOutPage = false,
    this.isShowMake = false,
    this.sentKitchenProducts = const [],
    this.maxWidth = 180.0,
    this.hasMore = false,
    this.goodsList = const <GoodsProduct>[],
    this.loadNextPage,
    this.onDetailChange,
  });

  // 控制器
  final cardStyleController = Get.find<CardStyleController>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 计算每行的个数
        int crossAxisCount = max((constraints.maxWidth / maxWidth).round(), 1);
        // 计算宽度（记得减去间距）
        double itemWidth = (constraints.maxWidth - (crossAxisCount - 1) * 10) / crossAxisCount;
        // 图片高度
        double imgHeight = cardStyleController.isImageMode ? itemWidth * 0.75 : 0;
        // 内容高度
        double contentHeight = (cardStyleController.isImageMode ? 104.0 : 110.0).scaleHeight;
        // 盒子高度
        double itemHeight = imgHeight + contentHeight;

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            mainAxisExtent: itemHeight,
          ),
          itemCount: goodsList.length,
          itemBuilder: (_, int index) {
            // 列表详情
            GoodsProduct item = goodsList[index];
            return ListItem(
              isSoldOutPage: isSoldOutPage,
              imgWidth: itemWidth,
              imgMode: cardStyleController.isImageMode,
              isShowMake: isShowMake,
              sentKitchenProducts: sentKitchenProducts,
              detail: item,
              onTap: onDetailChange,
            );
          },
        );
      },
    );
  }
}
