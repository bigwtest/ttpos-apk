// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/goods/views/must/must_item_goods.dart';
import 'package:ttpos_ui/components/goods/views/must/must_item_title.dart';

class MustItem extends StatelessWidget {
  final MustGoodsItem detail; // 商品详情
  final void Function(GoodsProduct detail)? onDetailChange; // 点击

  const MustItem({
    super.key,
    required this.detail,
    this.onDetailChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MustItemTitle(
          detail: detail,
        ),
        SizedBox(
          height: 10.0,
        ),
        MustItemGoods(
          goodsList: detail.products.list,
          onDetailChange: onDetailChange,
        ),
      ],
    );
  }
}
