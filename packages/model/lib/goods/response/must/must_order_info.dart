import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/goods/response/must/must_order_list.dart';

part 'must_order_info.freezed.dart';
part 'must_order_info.g.dart';

// 商品规格
@freezed
class GoodsMustOrderInfo with _$GoodsMustOrderInfo {
  factory GoodsMustOrderInfo({
    // 用餐方式 0:堂食 1:打包
    @JsonKey(name: "dining_method") required int diningMethod,
    // 销售账单ID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单列表
    @JsonKey(name: "sale_order_list") required List<GoodsMustOrderList> saleOrderList,
  }) = _GoodsMustOrderInfo;

  factory GoodsMustOrderInfo.fromJson(Map<String, dynamic> json) => _$GoodsMustOrderInfoFromJson(json);
}
