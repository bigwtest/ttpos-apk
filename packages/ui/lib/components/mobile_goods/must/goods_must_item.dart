import 'package:flutter/material.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/goods/views/must/must_item_title.dart';
import 'package:ttpos_ui/components/mobile_goods/list/goods_list_item.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class GoodsMustItem extends StatelessWidget {
  final MustGoodsItem detail; // 商品详情
  final void Function(GoodsProduct detail)? onDetailChange; // 点击
  final void Function(GoodsProduct detail, CounterType type)? onTapCounter; // 加减号改变

  const GoodsMustItem({
    super.key,
    required this.detail,
    this.onDetailChange,
    this.onTapCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12.0.scalePadding,
        horizontal: 16.0.scalePadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12.0.scalePadding,
        children: [
          Container(
            padding: EdgeInsets.all(
              8.0.scalePadding,
            ),
            decoration: BoxDecoration(
              color: CustomTheme.primaryColor.shade50,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: MustItemTitle(
              isShowSelect: false,
              detail: detail,
            ),
          ),
          // 商品列表
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 24.0.scalePadding,
            children: detail.products.list
                .map(
                  (item) => GoodsListItem(
                    count: item.selectedNum,
                    detail: item.product,
                    onDetailChange: onDetailChange,
                    onTapCounter: (detail, type, {startKey}) => onTapCounter?.call(detail, type),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
