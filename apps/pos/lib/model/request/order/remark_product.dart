import 'package:freezed_annotation/freezed_annotation.dart';

part 'remark_product.freezed.dart';
part 'remark_product.g.dart';

//RequestOrderPriceProduct 备注商品
@unfreezed
class RequestOrderRemarkProduct with _$RequestOrderRemarkProduct {
  factory RequestOrderRemarkProduct({
    
    // 销售账单ID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,

    // 销售订单ID
    @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,

    // 销售订单产品ID
    @JsonKey(name: 'order_product_uuid') required int orderProductUuid,

    // 备注
    @JsonKey(name: 'remark') required String remark, 

  }) = _RequestOrderRemarkProduct;

  factory RequestOrderRemarkProduct.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderRemarkProductFromJson(json);

}
