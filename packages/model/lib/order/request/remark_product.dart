import 'package:freezed_annotation/freezed_annotation.dart';

part 'remark_product.freezed.dart';
part 'remark_product.g.dart';

@unfreezed
class RequestRemarkProduct with _$RequestRemarkProduct {
  factory RequestRemarkProduct({
    // 订单商品UUID
    @JsonKey(name: "order_product_uuid") required int orderProductUuid,
    // remark
    @JsonKey(name: "remark") required String remark,
    // 销售账单UUID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单UUID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestRemarkProduct;

  factory RequestRemarkProduct.fromJson(Map<String, dynamic> json) => _$RequestRemarkProductFromJson(json);
}
