import 'package:freezed_annotation/freezed_annotation.dart';

part 'opt_product.freezed.dart';
part 'opt_product.g.dart';

//RequestOrderOptProduct 操作商品
@unfreezed
class RequestOrderOptProduct with _$RequestOrderOptProduct {
  factory RequestOrderOptProduct({
    
    // 销售账单ID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,

    // 销售订单ID
    @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,

    // 销售订单商品ID
    @JsonKey(name: 'sale_order_product_uuid') required int saleOrderProductUuid,

  }) = _RequestOrderOptProduct;

  factory RequestOrderOptProduct.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderOptProductFromJson(json);

}
