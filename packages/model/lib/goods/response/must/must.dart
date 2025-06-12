import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/must/must_order_info.dart';

part 'must.freezed.dart';
part 'must.g.dart';

// 商品规格
@freezed
class GoodsMust with _$GoodsMust {
  factory GoodsMust({
    // 必点方案列表
    @JsonKey(name: "list") required List<MustGoodsItem> list,
    // 购物车信息。当必点方案中有自动加购商品时，返回购物车信息。后台会自动加购商品到购物车中，前端用这个购物车信息更新界面
    @JsonKey(name: "shop_cart_info") GoodsMustOrderInfo? shopCartInfo,
  }) = _GoodsMust;

  factory GoodsMust.fromJson(Map<String, dynamic> json) => _$GoodsMustFromJson(json);
}
