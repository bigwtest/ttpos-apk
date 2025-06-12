import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'must_order_product_list.freezed.dart';
part 'must_order_product_list.g.dart';

// 商品规格
@freezed
class GoodsMustOrderProductList with _$GoodsMustOrderProductList {
  factory GoodsMustOrderProductList({
    // 自助餐信息
    @JsonKey(name: "about_buffet") required AboutBuffet aboutBuffet,
    // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
    @JsonKey(name: "discount_price") required double discountPrice,
    // 是否退菜
    @JsonKey(name: "is_cancel") required bool isCancel,
    // 是否是赠菜
    @JsonKey(name: "is_gift") required bool isGift,
    // 是否必点
    @JsonKey(name: "is_must") required bool isMust,
    // 商品属性
    @JsonKey(name: "locale_attribute_name") required LocaleName localeAttributeName,
    // 自助餐名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 数量
    @JsonKey(name: "num") required int num,
    // 原价
    @JsonKey(name: "price") required double price,
    // 备注
    @JsonKey(name: "remark") required String remark,
    // 0: 未送厨 1:已送厨
    @JsonKey(name: "status") required int status,
    // 商品uuid
    @JsonKey(name: "uuid") required int uuid,
  }) = _GoodsMustOrderProductList;

  factory GoodsMustOrderProductList.fromJson(Map<String, dynamic> json) => _$GoodsMustOrderProductListFromJson(json);
}

@freezed
class AboutBuffet with _$AboutBuffet {
  const factory AboutBuffet({
    // 是否是自助餐顾客
    @JsonKey(name: "is_customer") required bool isCustomer,
    // 是否是加钟
    @JsonKey(name: "is_delay") required bool isDelay,
  }) = _AboutBuffet;

  factory AboutBuffet.fromJson(Map<String, dynamic> json) => _$AboutBuffetFromJson(json);
}
