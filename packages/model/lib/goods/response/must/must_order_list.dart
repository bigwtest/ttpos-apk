import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/goods/response/must/must_order_amount_info.dart';
import 'package:ttpos_model/goods/response/must/must_order_product_list.dart';

part 'must_order_list.freezed.dart';
part 'must_order_list.g.dart';

// 商品规格
@freezed
class GoodsMustOrderList with _$GoodsMustOrderList {
  factory GoodsMustOrderList({
    // 统计信息
    @JsonKey(name: "amount_info") required GoodsMustOrderAmountInfo amountInfo,
    // 订单号
    @JsonKey(name: "order_no") required String orderNo,
    // 商品列表
    @JsonKey(name: "product_list") required List<GoodsMustOrderProductList> productList,
    // 商品数量
    @JsonKey(name: "product_num") required int productNum,
    // 订单ID
    @JsonKey(name: "uuid") required int uuid,
  }) = _GoodsMustOrderList;

  factory GoodsMustOrderList.fromJson(Map<String, dynamic> json) => _$GoodsMustOrderListFromJson(json);
}
