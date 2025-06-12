// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/api/goods/category_api.dart';
import 'package:pos/api/goods/goods_api.dart';
import 'package:pos/components/sold_out/controllers/sold_out_dialog.dart';
import 'package:ttpos_ui/components/goods/views/goods_view.dart';

class GoodsIndex extends StatelessWidget {
  final String tag;

  const GoodsIndex({
    super.key,
    this.tag = 'sold_out',
  });

  @override
  Widget build(BuildContext context) {
    //
    SoldOutDialogController soldOutDialogController = Get.put(
      SoldOutDialogController(
        tag: tag,
      ),
      tag: tag,
    );
    //
    return GoodsView(
      tag: tag,
      isSort: false,
      isSoldOutPage: true, // 是否为估清页面
      isShowSearch: false, // 是否显示搜索
      onCategoryList: CategoryAPI().getCategoryList,
      onGoodsBaseList: GoodsAPI().getGoodsList,
      onDetailChange: (detail, {startKey, startPos, flavorId}) {
        soldOutDialogController.showGoodsDetailDialog(
          detail,
        );
      },
    );
  }
}
