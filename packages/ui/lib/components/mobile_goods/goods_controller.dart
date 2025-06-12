//===========================================================================
// 商品控制器
//===========================================================================
import 'dart:async';
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/goods/response/category/category.dart';
import 'package:ttpos_model/goods/response/product/buffet.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/goods/controllers/mixin/category.dart';
import 'package:ttpos_ui/components/goods/controllers/mixin/list.dart';

class GoodsListModel {
  final GoodsCategory categoryInfo; // 商品分类
  final List<GoodsProduct> goodsList; // 商品列表
  final int count;

  GoodsListModel({
    required this.categoryInfo,
    this.goodsList = const [],
    this.count = 0,
  });

  factory GoodsListModel.fromJson(Map<String, dynamic> json) {
    return GoodsListModel(
      categoryInfo: json['category_info'],
      goodsList: json['goods_list'],
      count: json['count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category_info': categoryInfo,
      'goods_list': goodsList,
      'count': count,
    };
  }
}

class GoodsController extends GetxController with MixinGoodsList, MixinGoodsCategory {
  /// 是否需要排序
  @override
  final bool isSort;

  /// 是否为自助餐
  @override
  final bool initIsBuffet;

  /// 是否监听扫码
  @override
  final bool isListenScan;

  /// 请求商品分类列表方法
  @override
  final Future<List<GoodsCategory>?> Function()? fetchCategoryList;

  /// 请求商品列表方法
  @override
  final Future<BaseList<GoodsProduct>?> Function(BasePageQuery data)? fetchGoodsBaseList;

  /// 请求自助餐商品列表
  @override
  final Future<BaseList<GoodsBuffet>?> Function()? fetchBuffetList;

  /// 点击商品详情回调方法
  @override
  final void Function(GoodsProduct detail, {int? flavorId})? onDetailChange;

  // 轮询周期 - 商品列表
  @override
  final Duration? pollingGoodsBaseListDuration;

  // 轮询周期 - 商品分类
  @override
  final Duration? pollingGoodsCategoryListDuration;

  GoodsController({
    this.isSort = true,
    this.initIsBuffet = false,
    this.isListenScan = false,
    this.fetchGoodsBaseList,
    this.fetchCategoryList,
    this.fetchBuffetList,
    this.onDetailChange,
    this.pollingGoodsBaseListDuration = const Duration(seconds: 15),
    this.pollingGoodsCategoryListDuration = const Duration(seconds: 20),
  });

  // 组合数据
  List<GoodsListModel> get goodsSearchList {
    return categoryList
        // 判断是不是全部分类
        .where((item) => !item.isAllCategory)
        .map(
          (item) {
            final list = goodsBaseList
                .where(
                  (product) =>
                      // 分类ID
                      product.categoryUuid == item.uuid ||
                      // 一级分类ID
                      product.firstCategoryUuid == item.uuid ||
                      // 特色分类ID
                      (item.isSpecial && product.specialCategoryUuid == item.uuid),
                )
                .toList();
            // 计算指定 ID 列表的商品数量总和
            int totalNum = 0;
            if (unsentKitchenList.isNotEmpty) {
              totalNum = list.fold(0, (sum, product) => sum + (unsentKitchenMap[product.uuid] ?? 0));
            }
            // 返回
            return GoodsListModel(
              categoryInfo: item,
              goodsList: list,
              count: totalNum,
            );
          },
        )
        .where((item) => item.goodsList.isNotEmpty)
        .toList();
  }

  RxList<Product> unsentKitchenList = const <Product>[].obs;
  // 使用 Map 合并具有相同 id 的商品
  Map<int, int> get unsentKitchenMap {
    final map = <int, int>{};
    for (final product in unsentKitchenList) {
      if (product.productPackageUuid == null) continue;
      if (map.containsKey(product.productPackageUuid)) {
        // 如果 Map 中已存在该 id 的商品，则合并数量
        map[product.productPackageUuid ?? 0] = (map[product.productPackageUuid] ?? 0) + product.num;
      } else {
        // 否则，添加新的商品到 Map
        map[product.productPackageUuid ?? 0] = product.num;
      }
    }
    //
    return map;
  }

  //
  final RxList<GoodsBuffet> mustProducts = <GoodsBuffet>[].obs;
  List<int> get mustProductUuids => mustProducts.map((item) => item.uuid).toList();

  final selectedIndex = 0.obs;
  final selectCategoryIndex = 0.obs;
  final scrollController = ScrollController();
  // 存储每个分类的位置信息
  final Map<int, double> categoryPositions = {};
  bool isScrolling = false;

  // 定义高度
  final double categorySpacing = 4.0; // 分类间隙
  final double categoryHeight = 44.0; // 分类高度
  final double goodsListSpacing = 10.0; // 商品列表间隙
  final double goodsListHeight = 120.0; // 商品item高度

  Worker? _everAllWorker;
  Worker? _selectedWorker;

  @override
  void onInit() async {
    // 监听右侧滚动
    scrollController.addListener(_onScroll);

    // 监听
    _everAllWorker = everAll(
      [
        searchBuffetGoodsList,
        searchGoodsBaseList, // 基础数据的变化
      ],
      (_) {
        //
        calculateCategoryPositions();
      },
    );

    // 监听
    _selectedWorker = debounce(selectCategoryIndex, time: const Duration(milliseconds: 200), (_) {
      _selectCategory();
    });

    //
    super.onInit();
  }

  @override
  void onClose() {
    //
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    //
    _everAllWorker?.dispose();
    _everAllWorker = null;
    //
    _selectedWorker?.dispose();
    _selectedWorker = null;
    //
    _throttleTimer?.cancel();
    _throttleTimer = null;
    //
    super.onClose();
  }

  Timer? _throttleTimer;
  VoidCallback throttle(VoidCallback function, {int delay = 500}) {
    return () {
      if (_throttleTimer != null && _throttleTimer!.isActive) return;
      function(); // 执行目标逻辑
      _throttleTimer = Timer(Duration(milliseconds: delay), () {});
    };
  }

  void _onScroll() {
    if (isScrolling) return;

    // 获取当前滚动位置
    double currentOffset = scrollController.offset;
    // 找到当前在可视区域中点的分类
    int? currentIndex;

    categoryPositions.forEach((index, position) {
      if (position < currentOffset) {
        currentIndex = index;
      }
    });

    if (currentIndex != null && currentIndex != selectedIndex.value) {
      selectedIndex.value = currentIndex!;
    }
  }

  // 滚动到某个位置
  void _selectCategory() {
    selectedIndex.value = selectCategoryIndex.value;
    // 滚动状态
    if (isScrolling) return;
    // 判断是否可以滚动
    if (scrollController.hasClients) {
      isScrolling = true;
      // 获取位置信息
      double targetPosition = categoryPositions[selectCategoryIndex.value] ?? 0;
      //
      scrollController
          .animateTo(
        min(
          targetPosition,
          scrollController.position.maxScrollExtent,
        ),
        duration: Duration(milliseconds: 100),
        curve: Curves.easeOut,
      )
          .then((_) {
        isScrolling = false;
      });
    }
  }

  // 计算并存储所有分类的位置信息
  void calculateCategoryPositions() {
    categoryPositions.clear();
    double currentPosition = 0;
    //
    for (int i = 0; i < goodsSearchList.length; i++) {
      categoryPositions[i] = currentPosition;
      // 计算当前分类的高度（标题高度 + 所有商品的高度）
      double height = categorySpacing +
          categoryHeight + // 分类标题高度
          (goodsSearchList[i].goodsList.length * goodsListHeight) +
          ((goodsSearchList[i].goodsList.length - 1) * goodsListSpacing); // 每个商品项的高度
      currentPosition += height;
    }
  }
}
