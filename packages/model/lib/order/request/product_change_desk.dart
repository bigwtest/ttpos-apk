import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_change_desk.freezed.dart';
part 'product_change_desk.g.dart';

// RequestOrderOptProduct 操作商品
@unfreezed
class RequestChangeDeskProduct with _$RequestChangeDeskProduct {
  factory RequestChangeDeskProduct({
    // 目标桌台ID
    @JsonKey(name: "desk_uuid") required int deskUuid,
    // 销售账单ID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单商品ID
    @JsonKey(name: "sale_order_product_uuid") required int saleOrderProductUuid,
    // 销售订单ID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestChangeDeskProduct;

  factory RequestChangeDeskProduct.fromJson(Map<String, dynamic> json) => _$RequestChangeDeskProductFromJson(json);
}
