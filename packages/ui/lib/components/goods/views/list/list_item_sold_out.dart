// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ttpos_ui/components/goods/views/list/list_item_sold_out_tips.dart';

// Project imports:

class ListItemSoldOut extends StatelessWidget {
  final SoldOutType type; // 使用枚举类型代替字符串

  const ListItemSoldOut({
    super.key,
    this.type = SoldOutType.soldOut, // 默认使用 'soldOut'
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Center(
        child: ListItemSoldOutTips(
          type: type,
        ),
      ),
    );
  }
}
