// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/goods/views/must/must_item.dart';

class MustList extends StatelessWidget {
  final List<MustGoodsItem> mustGoodsList;
  final void Function(GoodsProduct detail, {int? mustId})? onDetailChange; // 点击

  const MustList({
    super.key,
    this.mustGoodsList = const [],
    this.onDetailChange,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(right: 6.0),
      separatorBuilder: (context, index) => SizedBox(height: 16.0), // 间距
      itemCount: mustGoodsList.length,
      itemBuilder: (_, int index) {
        final item = mustGoodsList[index];
        return MustItem(
          detail: item,
          onDetailChange: (detail) => onDetailChange?.call(detail, mustId: item.uuid),
        );
      },
    );
  }
}
