import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/mobile_goods/list/goods_list_content.dart';
import 'package:ttpos_ui/components/mobile_goods/list/goods_list_img.dart';
import 'package:ttpos_ui/components/mobile_goods/list/goods_list_img_amplify.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class GoodsListItem extends StatelessWidget {
  final bool isNumLoading;
  final bool isMust;
  final CounterType? counterType;
  final GoodsProduct? changeProduct;
  final int count;
  final List<int> canChangeNumList;
  final bool isViewMode; // 是否为查看模式
  final GoodsProduct detail; // 商品详情
  final double imgWidth;
  final bool isDisabled;
  final void Function(GoodsProduct detail)? onDetailChange; // 点击内容的时候
  final void Function(GoodsProduct detail, CounterType type, {GlobalKey? startKey})? onTapCounter; // 加减号改变

  const GoodsListItem({
    super.key,
    this.isNumLoading = false,
    this.isMust = false,
    this.counterType,
    this.changeProduct,
    this.count = 0,
    this.canChangeNumList = const [],
    this.isViewMode = false,
    required this.detail,
    this.imgWidth = 104,
    this.isDisabled = false,
    this.onDetailChange,
    this.onTapCounter,
  });

  // 是不是单规格
  bool get isSingleSpec {
    return (detail.flavors.list.length <= 1) && (detail.attributeGroups.list.isEmpty) && (detail.sauces.list.isEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0.scalePadding,
      ),
      child: Row(
        spacing: 8.0.scalePadding,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoodsListImg(
            detail: detail,
            isDisabled: isDisabled,
            imgWidth: imgWidth,
            onTap: () {
              // 如果是单规格放大图片
              if (isSingleSpec) {
                Get.dialog(
                  Dialog(
                    child: GoodsListImgAmplify(
                      image: detail.image,
                    ),
                  ),
                );
                return;
              }
              // 如果是多规格，弹出详细
              onDetailChange?.call(detail);
            },
          ),
          Expanded(
            child: Opacity(
              opacity: detail.isSoldOut ? 0.6 : 1,
              child: GoodsListContent(
                isMust: isMust,
                canChangeNumList: canChangeNumList,
                isNumLoading: isNumLoading,
                counterType: counterType,
                changeProduct: changeProduct,
                isViewMode: isViewMode,
                isSingleSpec: isSingleSpec,
                count: count,
                detail: detail,
                onTap: () {
                  // 如果是多规格，弹出详细
                  if (!isSingleSpec) {
                    onDetailChange?.call(detail);
                  }
                },
                onTapCounter: (type, {startKey}) => onTapCounter?.call(detail, type, startKey: startKey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
