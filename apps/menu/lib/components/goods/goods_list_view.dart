import 'package:flutter/material.dart';
import 'package:menu/api/goods/category_api.dart';
import 'package:menu/api/goods/goods_api.dart';
import 'package:ttpos_ui/components/goods/controllers/detail_controller.dart';
import 'package:ttpos_ui/components/mobile_goods/goods_view.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:uuid/uuid.dart';

class GoodsListView extends StatelessWidget {
  GoodsListView({super.key});

  final String tag = 'home_${Uuid().v4()}';

  @override
  Widget build(BuildContext context) {
    return GoodsView(
      tag: tag,
      isViewMode: true,
      onGoodsBaseList: GoodsAPI().getGoodsList,
      onCategoryList: CategoryAPI().getCategoryList,
      onTapCounter: (detail, type, {startKey}) {
        GoodsDetailController.showMobileDialog(
          detail,
          type,
          isViewMode: true,
        );
      },
      onDetailChange: (detail) {
        GoodsDetailController.showMobileDialog(
          detail,
          CounterType.up,
          isViewMode: true,
        );
      },
    );
  }
}
