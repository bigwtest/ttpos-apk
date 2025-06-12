import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product.freezed.dart';
part 'add_product.g.dart';

//RequestOrderAddProduct 添加商品
@unfreezed
class RequestOrderAddProduct with _$RequestOrderAddProduct {
  factory RequestOrderAddProduct({
    // 销售账单ID。可选，参数不填时表示要新建销售账单，添加商品后创建点餐销售账单。
    @JsonKey(name: 'sale_bill_uuid') @Default(0) int saleBillUuid,
    // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
    @JsonKey(name: 'sale_order_uuid') @Default(0) int saleOrderUuid,
    // 必点方案ID
    @JsonKey(name: 'must_plan_uuid') @Default(0) int mustPlanUuid,
    // 操作类型。add: 加购，sub: 减购. 不填，默认是加购
    @JsonKey(name: "operation") @Default('add') String operation,
    // 规格ID
    @JsonKey(name: 'attribute_uuid') @Default([]) List<int> attributeUuid,
    // 某个规格商品ID
    @JsonKey(name: 'flavor_uuid') required int flavorUuid,
    // 小料ID
    @JsonKey(name: 'sauce_uuid') @Default([]) List<int> sauceUuid,
  }) = _RequestOrderAddProduct;

  factory RequestOrderAddProduct.fromJson(Map<String, dynamic> json) => _$RequestOrderAddProductFromJson(json);
}
