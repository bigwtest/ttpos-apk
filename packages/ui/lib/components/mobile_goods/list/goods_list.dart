import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/mobile_goods/goods_controller.dart';
import 'package:ttpos_ui/components/mobile_goods/list/goods_list_head.dart';
import 'package:ttpos_ui/components/mobile_goods/list/goods_list_item.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';

class GoodsList extends StatelessWidget {
  final double categorySpacing;
  final double categoryHeight;
  final double goodsListSpacing;
  final double goodsListHeight;
  final bool isNumLoading;
  final List<int> canChangeNumList;
  final CounterType? counterType;
  final GoodsProduct? changeProduct;
  final ScrollController? scrollController;
  final bool isViewMode; // 是否为查看模式
  final Map<int, int>? unsentKitchen;
  final List<GoodsListModel> goodsSearchList;
  final List<int> mustProductUuids;
  final void Function(GoodsProduct detail)? onDetailChange; // 点击
  final void Function(GoodsProduct detail, CounterType type, {GlobalKey? startKey})? onTapCounter; // 加减号改变

  const GoodsList({
    super.key,
    this.categorySpacing = 4.0,
    this.categoryHeight = 44.0,
    this.goodsListSpacing = 10.0,
    this.goodsListHeight = 120.0,
    this.isNumLoading = false,
    this.canChangeNumList = const [],
    this.counterType,
    this.changeProduct,
    this.scrollController,
    this.isViewMode = false,
    this.unsentKitchen,
    this.mustProductUuids = const [],
    this.goodsSearchList = const [],
    this.onDetailChange,
    this.onTapCounter,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      itemCount: goodsSearchList.length + 1,
      separatorBuilder: (context, index) => SizedBox(
        height: categorySpacing,
      ), // 间距
      itemBuilder: (context, index) {
        if (index == goodsSearchList.length) {
          return const SizedBox(
            height: 100.0,
          );
        }
        //
        final item = goodsSearchList[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: categoryHeight,
              child: GoodsListHead(
                title: item.categoryInfo.localeName.translate,
              ),
            ),
            Column(
              spacing: goodsListSpacing,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: item.goodsList
                  .map(
                    (detail) => SizedBox(
                      height: goodsListHeight,
                      child: GoodsListItem(
                        imgWidth: 100.0,
                        isMust: mustProductUuids.contains(detail.uuid),
                        isNumLoading: isNumLoading,
                        counterType: counterType,
                        changeProduct: changeProduct,
                        isViewMode: isViewMode,
                        detail: detail,
                        canChangeNumList: canChangeNumList,
                        count: unsentKitchen?[detail.uuid] ?? 0,
                        onDetailChange: onDetailChange,
                        onTapCounter: (req, type, {startKey}) async {
                          if (mustProductUuids.contains(detail.uuid) &&
                              type == CounterType.down &&
                              (unsentKitchen?[detail.uuid] ?? 0) == 1) {
                            bool isContinue = false;
                            await DialogManager.showConfirmDialog(
                              message: '此商品为必点商品，是否删除此商品？'.tr,
                              onConfirm: () {
                                isContinue = true;
                                return Future.value(true);
                              },
                            );
                            if (!isContinue) return;
                          }
                          //
                          onTapCounter?.call(req, type, startKey: startKey);
                        },
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      },
    );
  }
}
