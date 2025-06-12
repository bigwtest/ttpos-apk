import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/goods/response/category/category.dart';
import 'package:ttpos_model/goods/response/product/buffet.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/mobile_goods/category/goods_category.dart';
import 'package:ttpos_ui/components/mobile_goods/goods_controller.dart';
import 'package:ttpos_ui/components/mobile_goods/list/goods_list.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';

class GoodsView extends StatefulWidget {
  final String tag;
  final bool isNumLoading;
  final CounterType? counterType;
  final GoodsProduct? changeProduct;
  final bool isViewMode; // 是否为查看模式
  final bool initIsBuffet;
  final List<Product> unsentKitchenList;
  final List<GoodsBuffet> mustProducts;
  final List<int> canChangeNumList;
  final Future<BaseList<GoodsBuffet>?> Function()? onBuffetList;
  final void Function(GoodsProduct detail)? onDetailChange; // 点击
  final void Function(GoodsProduct detail, CounterType type, {GlobalKey? startKey})? onTapCounter; // 加减号改变
  final Future<List<GoodsCategory>?> Function()? onCategoryList; // 请求分类方法
  final Future<BaseList<GoodsProduct>?> Function(BasePageQuery data)? onGoodsBaseList; // 请求商品基础信息方法

  const GoodsView({
    super.key,
    this.isNumLoading = false,
    this.counterType,
    this.changeProduct,
    this.tag = 'instant',
    this.isViewMode = false,
    this.initIsBuffet = false,
    this.unsentKitchenList = const [],
    this.mustProducts = const [],
    this.canChangeNumList = const [],
    this.onBuffetList,
    this.onTapCounter,
    this.onDetailChange,
    this.onCategoryList,
    this.onGoodsBaseList,
  });

  // 获取控制器实例 - 复杂点，但生命力更强
  GoodsController get controller {
    try {
      return Get.find<GoodsController>(tag: tag);
    } catch (e) {
      return Get.put(
        GoodsController(
          isListenScan: false,
          initIsBuffet: initIsBuffet,
          fetchBuffetList: onBuffetList,
          fetchCategoryList: onCategoryList,
          fetchGoodsBaseList: onGoodsBaseList,
        ),
        tag: tag,
      );
    }
  }

  @override
  State<GoodsView> createState() => _GoodsViewState();
}

class _GoodsViewState extends State<GoodsView> {
  // 控制器实例
  late final GoodsController controller;

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    controller = widget.controller;
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<GoodsController>(tag: widget.tag)) {
      Get.delete<GoodsController>(tag: widget.tag);
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(GoodsView oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 监听到 widget.value 发生变化
    if (controller.isBuffet != widget.initIsBuffet) {
      controller.isBuffet = widget.initIsBuffet;
    }
    // 监听到 widget.initMust 发生变化
    final listEquality = ListEquality<Product>();
    bool areEqual = listEquality.equals(controller.unsentKitchenList, widget.unsentKitchenList);
    // 有变化重新赋值
    if (!areEqual) {
      controller.unsentKitchenList.assignAll(widget.unsentKitchenList);
    }
    //
    final equalityBuffet = ListEquality<GoodsBuffet>();
    bool isEqual = equalityBuffet.equals(controller.mustProducts, widget.mustProducts);
    if (!isEqual) {
      controller.mustProducts.assignAll(widget.mustProducts);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 分类列表
        Obx(
          () => Category(
            goodsSearchList: controller.goodsSearchList,
            selectedIndex: controller.selectedIndex.value,
            onChange: (index) {
              if (controller.selectCategoryIndex.value == index) return;
              controller.selectCategoryIndex.value = index;
            },
          ),
        ),
        // 产品列表
        Expanded(
          child: Obx(
            () => controller.goodsSearchList.isNotEmpty
                ? GoodsList(
                    categorySpacing: controller.categorySpacing,
                    categoryHeight: controller.categoryHeight,
                    goodsListSpacing: controller.goodsListSpacing,
                    goodsListHeight: controller.goodsListHeight,
                    isNumLoading: widget.isNumLoading,
                    canChangeNumList: widget.canChangeNumList,
                    counterType: widget.counterType,
                    changeProduct: widget.changeProduct,
                    unsentKitchen: controller.unsentKitchenMap,
                    mustProductUuids: controller.mustProductUuids,
                    scrollController: controller.scrollController,
                    isViewMode: widget.isViewMode,
                    goodsSearchList: controller.goodsSearchList,
                    onTapCounter: widget.onTapCounter,
                    onDetailChange: widget.onDetailChange,
                  )
                : Center(
                    child: TtEmpty(
                      imgWidth: 100.0,
                      fontSize: 14.0,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
