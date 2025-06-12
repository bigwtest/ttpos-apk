import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_product.freezed.dart';
part 'move_product.g.dart';

//RequestOrderPriceProduct 备注商品
@unfreezed
class RequestOrderMoveProduct with _$RequestOrderMoveProduct {
  factory RequestOrderMoveProduct({
    // 销售账单ID
    @JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,

    // 来源销售订单UUID, 必填
    @JsonKey(name: 'from') required int from,

    // 目标销售订单UUID, 必填
    @JsonKey(name: 'to') required int to,

    // 销售订单产品ID
    @JsonKey(name: 'products') required List<RequestOrderMoveProducts> products,

  }) = _RequestOrderMoveProduct;

  factory RequestOrderMoveProduct.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderMoveProductFromJson(json);

}

//RequestOrderMoveProducts 商品
@unfreezed
class RequestOrderMoveProducts with _$RequestOrderMoveProducts {
  factory RequestOrderMoveProducts({
    // 移动数量, 必填
    @JsonKey(name: 'num') required int num,

    // 销售订单商品UUID, 必填
    @JsonKey(name: 'uuid') required int uuid,

  }) = _RequestOrderMoveProducts;

  factory RequestOrderMoveProducts.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderMoveProductsFromJson(json);

}