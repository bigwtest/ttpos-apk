import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_product.freezed.dart';
part 'delete_product.g.dart';

// RequestOrderOptProduct 操作商品
@freezed
class RequestDeleteProduct with _$RequestDeleteProduct {
  const factory RequestDeleteProduct({
    // 订单商品UUID
    @JsonKey(name: "order_product_uuid") required int orderProductUuid,
    // 销售账单UUID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单UUID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestDeleteProduct;

  factory RequestDeleteProduct.fromJson(Map<String, dynamic> json) => _$RequestDeleteProductFromJson(json);
}
