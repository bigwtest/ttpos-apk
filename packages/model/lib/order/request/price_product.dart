import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_product.freezed.dart';
part 'price_product.g.dart';

//RequestOrderAddProduct 添加商品
@unfreezed
class RequestPriceProduct with _$RequestPriceProduct {
  factory RequestPriceProduct({
    // 销售账单ID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
    // 销售订单ID
    @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
    // 销售订单产品ID
    @JsonKey(name: 'order_product_uuid') required int orderProductUuid,
    // 备注
    @JsonKey(name: 'price') required double price,
  }) = _RequestPriceProduct;

  factory RequestPriceProduct.fromJson(Map<String, dynamic> json) => _$RequestPriceProductFromJson(json);
}
