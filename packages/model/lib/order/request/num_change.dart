import 'package:freezed_annotation/freezed_annotation.dart';

part 'num_change.freezed.dart';
part 'num_change.g.dart';

@unfreezed
class RequestNumChange with _$RequestNumChange {
  factory RequestNumChange({
    // 数量
    @JsonKey(name: "num") required int num,
    // 销售账单ID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单商品ID
    @JsonKey(name: "sale_order_product_uuid") required int saleOrderProductUuid,
    // 销售订单ID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestNumChange;

  factory RequestNumChange.fromJson(Map<String, dynamic> json) => _$RequestNumChangeFromJson(json);
}
