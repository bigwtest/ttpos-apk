import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'must_plan_product.freezed.dart';
part 'must_plan_product.g.dart';

@freezed
class MustPlanProductWrapper with _$MustPlanProductWrapper {
  const factory MustPlanProductWrapper({
    @JsonKey(name: "is_auto_add") required bool isAutoAdd,
    @JsonKey(name: "must_num") required int mustNum,
    @JsonKey(name: "need_num") required int needNum,
    @JsonKey(name: "product") required MustPlanProduct product,
  }) = _MustPlanProductWrapper;

  factory MustPlanProductWrapper.fromJson(Map<String, dynamic> json) => _$MustPlanProductWrapperFromJson(json);
}

@freezed
class MustPlanProduct with _$MustPlanProduct {
  const factory MustPlanProduct({
    @JsonKey(name: "attribute_groups") required BaseList<MustPlanProductAttributeGroup> attributeGroups,
    @JsonKey(name: "flavors") required BaseList<MustPlanProductFlavor> flavors,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "limit_num") required int limitNum,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "sauces") required MustPlanSauces sauces,
    @JsonKey(name: "unit") required LocaleName unit,
    @JsonKey(name: "uuid") required int uuid,
  }) = _MustPlanProduct;

  factory MustPlanProduct.fromJson(Map<String, dynamic> json) => _$MustPlanProductFromJson(json);
}

@freezed
class MustPlanProductAttributeGroup with _$MustPlanProductAttributeGroup {
  const factory MustPlanProductAttributeGroup({
    @JsonKey(name: "attributes") required BaseList<MustPlanProductAttribute> attributes,
    @JsonKey(name: "is_must") required bool isMust,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "max_select") required int maxSelect,
  }) = _MustPlanProductAttributeGroup;

  factory MustPlanProductAttributeGroup.fromJson(Map<String, dynamic> json) =>
      _$MustPlanProductAttributeGroupFromJson(json);
}

@freezed
class MustPlanProductAttribute with _$MustPlanProductAttribute {
  const factory MustPlanProductAttribute({
    @JsonKey(name: "is_default_selected") required bool isDefaultSelected,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "uuid") required int uuid,
  }) = _MustPlanProductAttribute;

  factory MustPlanProductAttribute.fromJson(Map<String, dynamic> json) => _$MustPlanProductAttributeFromJson(json);
}

@freezed
class MustPlanProductFlavor with _$MustPlanProductFlavor {
  const factory MustPlanProductFlavor({
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "stock_num") required int stockNum,
    @JsonKey(name: "uuid") required int uuid,
  }) = _MustPlanProductFlavor;

  factory MustPlanProductFlavor.fromJson(Map<String, dynamic> json) => _$MustPlanProductFlavorFromJson(json);
}

@freezed
class MustPlanSauces with _$MustPlanSauces {
  const factory MustPlanSauces({
    @JsonKey(name: "is_must") required bool isMust,
    @JsonKey(name: "list") required List<MustPlanProductSauce> list,
    @JsonKey(name: "max_select") required int maxSelect,
  }) = _MustPlanSauces;

  factory MustPlanSauces.fromJson(Map<String, dynamic> json) => _$MustPlanSaucesFromJson(json);
}

@freezed
class MustPlanProductSauce with _$MustPlanProductSauce {
  const factory MustPlanProductSauce({
    @JsonKey(name: "is_default_selected") required bool isDefaultSelected,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "stock_num") required int stockNum,
    @JsonKey(name: "uuid") required int uuid,
  }) = _ProductSauce;

  factory MustPlanProductSauce.fromJson(Map<String, dynamic> json) => _$MustPlanProductSauceFromJson(json);
}
