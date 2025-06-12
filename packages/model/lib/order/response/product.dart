import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@unfreezed
class Product with _$Product {
  factory Product({
    // 自助餐信息
    @JsonKey(name: "about_buffet") required AboutBuffet aboutBuffet,
    // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
    @JsonKey(name: "discount_price") required double discountPrice,
    // 制作完成数量
    @JsonKey(name: "finished_num") int? finishedNum,
    // 是否是自助餐
    @JsonKey(name: "is_buffet") required bool isBuffet,
    // 是否退菜
    @JsonKey(name: "is_cancel") required bool isCancel,
    // 是否是赠菜
    @JsonKey(name: "is_gift") required bool isGift,
    // 是否必点
    @JsonKey(name: "is_must") required bool isMust,
    // 必点方案ID
    @JsonKey(name: 'must_plan_uuid') @Default(0) int mustPlanUuid,
    // 商品属性
    @JsonKey(name: "locale_attribute_name") required LocaleName localeAttributeName,
    // 商品名称。商品名称、自助餐名称、自助餐加钟名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 数量
    @JsonKey(name: "num") required int num,
    // 原价
    @JsonKey(name: "price") required double price,
    // 单价
    @JsonKey(name: "unit_price") double? unitPrice,
    // 备注
    @JsonKey(name: "remark") required String remark,
    // 0: 未送厨 1:已送厨 2:制作完成（出餐）
    @JsonKey(name: "status") required int status,
    // 商品uuid
    @JsonKey(name: "uuid") required int uuid,
    // 商品ID
    @JsonKey(name: "product_package_uuid") int? productPackageUuid,
    // 该商品是否显示在厨显
    @JsonKey(name: "is_show_kitchen") int? isShowKitchen,
    // 顾客可修改必点数量
    @JsonKey(name: "can_change_num") @Default(true) bool canChangeNum,
    // 商品限购数量
    @JsonKey(name: "limit_num") int? limitNum,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class AboutBuffet with _$AboutBuffet {
  const factory AboutBuffet({
    // 自助餐Id
    @JsonKey(name: "buffet_uuid") required int buffetUuid,
    // 自助餐顾客类型uuid
    @JsonKey(name: "customer_type_uuid") required int customerTypeUuid,
    // 是否是自助餐顾客
    @JsonKey(name: "is_customer") required bool isCustomer,
    // 是否是加钟
    @JsonKey(name: "is_delay") required bool isDelay,
  }) = _AboutBuffet;

  factory AboutBuffet.fromJson(Map<String, dynamic> json) => _$AboutBuffetFromJson(json);
}
