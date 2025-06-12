import 'dart:async';

import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/goods/response/category/category.dart';
import 'package:ttpos_model/goods/response/product/buffet.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_ui/components/goods/controllers/mixin/category.dart';
import 'package:ttpos_ui/components/goods/controllers/mixin/list.dart';

//===========================================================================
// 商品控制器
//===========================================================================

class GoodsController extends GetxController with MixinGoodsList, MixinGoodsCategory {
  // 是否需要排序
  @override
  final bool isSort;

  /// 请求商品分类列表方法
  @override
  final Future<List<GoodsCategory>?> Function()? fetchCategoryList;

  /// 请求商品列表方法
  @override
  Future<BaseList<GoodsProduct>?> Function(BasePageQuery data)? fetchGoodsBaseList;

  /// 获取自助餐商品列表
  @override
  final Future<BaseList<GoodsBuffet>?> Function()? fetchBuffetList;

  /// 是否监听扫码
  @override
  final bool isListenScan;

  /// 是否为自助餐
  @override
  final bool initIsBuffet;

  /// 点击商品详情回调方法
  @override
  final void Function(GoodsProduct detail, {int? flavorId})? onDetailChange;

  /// 轮询周期 - 商品列表
  @override
  final Duration? pollingGoodsBaseListDuration;

  /// 轮询周期 - 商品分类
  @override
  final Duration? pollingGoodsCategoryListDuration;

  GoodsController({
    this.isSort = true,
    this.initIsBuffet = false,
    this.isListenScan = false,
    this.fetchCategoryList,
    this.fetchGoodsBaseList,
    this.fetchBuffetList,
    this.onDetailChange,
    this.pollingGoodsBaseListDuration = const Duration(minutes: 10),
    this.pollingGoodsCategoryListDuration = const Duration(minutes: 10),
  });

  // 搜索关键词
  final RxString _goodsSearchKeyword = ''.obs;
  get goodsSearchKeyword => _goodsSearchKeyword.value;
  set goodsSearchKeyword(value) {
    if (_goodsSearchKeyword.value == value) return;
    _goodsSearchKeyword.value = value;
  }

  // 查询数据
  final RxList<GoodsProduct> _goodsSearchList = <GoodsProduct>[].obs;
  List<GoodsProduct> get goodsSearchList => _goodsSearchList;
  set goodsSearchList(List<GoodsProduct> value) {
    // // 检查两个列表是否相等
    // bool areEqual = ListEquality<GoodsProduct>().equals(_goodsSearchList, value);
    // if (areEqual) return;
    //
    _goodsSearchList.assignAll(value);
  }

  Worker? _everAllWorker;

  @override
  void onInit() async {
    // 监听
    _everAllWorker = everAll(
      [
        searchBuffetGoodsList,
        searchGoodsBaseList, // 基础数据的变化
        _goodsSearchKeyword, // 关键词变化
        searchCategoryId, // 当前选择的分类信息
        searchCategorySubId,
      ],
      _onSearchChanged,
    );
    //
    super.onInit();
  }

  @override
  void onClose() {
    _debounce?.cancel();
    _debounce = null;
    _everAllWorker?.dispose();
    _everAllWorker = null;
    //
    super.onClose();
  }

  // 搜索查询
  Timer? _debounce;
  void _onSearchChanged(_) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    // 延迟200毫秒
    _debounce = Timer(const Duration(milliseconds: 200), _getGoodsList);
  }

  void _getGoodsList() {
    List<GoodsProduct> list = [];
    // 判断
    if (goodsBaseList.isEmpty) {
      _goodsSearchList.value = [];
      return;
    }
    final info = categoryInfo;
    // 如果搜索关键词，则全局搜索，和分类没有关系
    if (goodsSearchKeyword.isNotEmpty) {
      final keyword = goodsSearchKeyword.toLowerCase().trim();
      list = goodsBaseList.where((item) {
        return item.localeName.translate.toLowerCase().contains(keyword);
      }).toList();
    } else if (info == null || info.uuid == 0 || info.isAllCategory) {
      // 全部分类
      list = goodsBaseList;
    } else {
      // 其他分类
      list = goodsBaseList.where((item) {
        // 特色分类查询条件
        bool specialCondition = false;
        // 判断是不是特色分类
        if (info.isSpecial) {
          specialCondition = item.specialCategoryUuid == info.uuid;
        }
        // 是否显示，下一级商品列表
        bool isShowChildrenList = false;
        // 如果一级分类，并且下一级数组大于零
        if (info.parentUuid == 0 && info.children.list.isNotEmpty) {
          final list = findCategoryChildrenIdList(info.children.list);
          // 判断商品ID在二级分类ID中是否存在
          isShowChildrenList = list.contains(item.categoryUuid);
        }
        // 最后合并
        return item.categoryUuid == info.uuid || specialCondition || isShowChildrenList;
      }).toList();
    }
    // 最后赋值
    goodsSearchList = list;
  }

  // 查找ID
  List<int> findCategoryChildrenIdList(List<GoodsCategory> list) {
    final List<int> arr = [];
    for (int i = 0; i < list.length; i++) {
      arr.add(list[i].uuid);
    }
    return arr;
  }
}
