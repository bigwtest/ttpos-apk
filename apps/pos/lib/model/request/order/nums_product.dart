import 'package:freezed_annotation/freezed_annotation.dart';

part 'nums_product.freezed.dart';
part 'nums_product.g.dart';

//RequestOrderAddProduct 添加商品
@unfreezed
class RequestOrderNumsProduct with _$RequestOrderNumsProduct {
  factory RequestOrderNumsProduct({
    
    // 销售账单ID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,

    // 销售订单ID
    @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,

    // 销售订单产品ID
    @JsonKey(name: 'sale_order_product_uuid') required int saleOrderProductUuid,

    // 数量
    @JsonKey(name: 'num') required int num, 
  
  }) = _RequestOrderNumsProduct;

  factory RequestOrderNumsProduct.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderNumsProductFromJson(json);

}
