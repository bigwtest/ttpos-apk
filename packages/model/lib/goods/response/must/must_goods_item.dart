import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/response/product/product.dart';

part 'must_goods_item.freezed.dart';
part 'must_goods_item.g.dart';

// 必点商品列表
@unfreezed
class MustGoodsItem with _$MustGoodsItem {
  factory MustGoodsItem({
    // 必选方案ID
    @JsonKey(name: "uuid") required int uuid,
    // 顾客可修改必点数量
    @JsonKey(name: "can_change_num") required bool canChangeNum,
    // 就餐人数
    @JsonKey(name: "meal_num") required int mealNum,
    // 必点规则.0-固定商品 1-可选商品
    @JsonKey(name: "must_rule") required int mustRule,
    // 必点类型.0-每笔订单必点1份 1-每人必点1份
    @JsonKey(name: "must_type") required int mustType,
    // 方案名称
    @JsonKey(name: "name") required String name,
    // 这个商品还需要点的数量。还差xx份
    @JsonKey(name: "need_num") required int needNum,
    // 商品列表
    @JsonKey(name: "products") required BaseList<MustProducts> products,
    // 已选数量。已选择xx份
    @JsonKey(name: "selected_num") required int selectedNum,
  }) = _MustGoodsItem;

  factory MustGoodsItem.fromJson(Map<String, dynamic> json) => _$MustGoodsItemFromJson(json);
}

// 必点商品详情
@unfreezed
class MustProducts with _$MustProducts {
  factory MustProducts({
    // 是否是自动加购的商品。是则自动加入购物车，并且不显示在“必选方案”的弹框中
    @JsonKey(name: "is_auto_add") bool? isAutoAdd,
    // 这个商品必选点的数量。还需点数量=must_num-selected_num
    @JsonKey(name: "must_num") required int mustNum,
    // 这个商品还需要点的数量。还需点数量=must_num-selected_num
    @JsonKey(name: "need_num") required int needNum,
    // 商品详情
    @JsonKey(name: "product") required GoodsProduct product,
    // 已选数量
    @JsonKey(name: "selected_num") required int selectedNum,
  }) = _MustProducts;

  factory MustProducts.fromJson(Map<String, dynamic> json) => _$MustProductsFromJson(json);
}
