import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooking_product.freezed.dart';
part 'cooking_product.g.dart';

// RequestAddProductCooking 向购物车添加商品并送厨
@freezed
class RequestCooking with _$RequestCooking {
  const factory RequestCooking({
    // 是否忽略必点方案
    @JsonKey(name: "ignore_must") required bool ignoreMust,
    // 商品信息列表
    @JsonKey(name: "products") @Default([]) List<RequestCookingProducts> products,
    // 销售账单ID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单ID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    // 高级密码
    @JsonKey(name: "password") String? password,
    // 是否只是检查送厨，true时检查送厨，false时检查送厨并实际送厨
    @JsonKey(name: "is_check_cooking") @Default(false) bool isCheckCooking,
  }) = _RequestCooking;

  factory RequestCooking.fromJson(Map<String, dynamic> json) => _$RequestCookingFromJson(json);
}

// req.ProductParams
@unfreezed
class RequestCookingProducts with _$RequestCookingProducts {
  factory RequestCookingProducts({
    // 商品规格uuid
    @JsonKey(name: "flavor_product_bom_uuid") required int flavorProductBomUuid,
    // 数量数量
    @JsonKey(name: "num") required int num,
    // 必点方案ID
    @JsonKey(name: 'must_plan_uuid') @Default(0) int mustPlanUuid,
    // 操作类型。add: 加购，sub: 减购
    @JsonKey(name: "operation") @Default('add') String operation,
    // 备注
    @JsonKey(name: "remark") @Default('') String remark,
    // 属性信息
    @JsonKey(name: "product_package_attribute_uuid_list") required List<int> productPackageAttributeUuidList,
    // 加料信息
    @JsonKey(name: "sauce_product_bom_uuid_list") required List<int> sauceProductBomUuidList,
  }) = _RequestCookingProducts;

  factory RequestCookingProducts.fromJson(Map<String, dynamic> json) => _$RequestCookingProductsFromJson(json);
}
