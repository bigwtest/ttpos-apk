// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_plan_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MustPlanProductWrapperImpl _$$MustPlanProductWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$MustPlanProductWrapperImpl(
      isAutoAdd: json['is_auto_add'] as bool,
      mustNum: (json['must_num'] as num).toInt(),
      needNum: (json['need_num'] as num).toInt(),
      product:
          MustPlanProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MustPlanProductWrapperImplToJson(
        _$MustPlanProductWrapperImpl instance) =>
    <String, dynamic>{
      'is_auto_add': instance.isAutoAdd,
      'must_num': instance.mustNum,
      'need_num': instance.needNum,
      'product': instance.product,
    };

_$MustPlanProductImpl _$$MustPlanProductImplFromJson(
        Map<String, dynamic> json) =>
    _$MustPlanProductImpl(
      attributeGroups: BaseList<MustPlanProductAttributeGroup>.fromJson(
          json['attribute_groups'] as Map<String, dynamic>,
          (value) => MustPlanProductAttributeGroup.fromJson(
              value as Map<String, dynamic>)),
      flavors: BaseList<MustPlanProductFlavor>.fromJson(
          json['flavors'] as Map<String, dynamic>,
          (value) =>
              MustPlanProductFlavor.fromJson(value as Map<String, dynamic>)),
      image: json['image'] as String,
      limitNum: (json['limit_num'] as num).toInt(),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      sauces: MustPlanSauces.fromJson(json['sauces'] as Map<String, dynamic>),
      unit: LocaleName.fromJson(json['unit'] as Map<String, dynamic>),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$MustPlanProductImplToJson(
        _$MustPlanProductImpl instance) =>
    <String, dynamic>{
      'attribute_groups': instance.attributeGroups,
      'flavors': instance.flavors,
      'image': instance.image,
      'limit_num': instance.limitNum,
      'locale_name': instance.localeName,
      'price': instance.price,
      'sauces': instance.sauces,
      'unit': instance.unit,
      'uuid': instance.uuid,
    };

_$MustPlanProductAttributeGroupImpl
    _$$MustPlanProductAttributeGroupImplFromJson(Map<String, dynamic> json) =>
        _$MustPlanProductAttributeGroupImpl(
          attributes: BaseList<MustPlanProductAttribute>.fromJson(
              json['attributes'] as Map<String, dynamic>,
              (value) => MustPlanProductAttribute.fromJson(
                  value as Map<String, dynamic>)),
          isMust: json['is_must'] as bool,
          localeName:
              LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
          maxSelect: (json['max_select'] as num).toInt(),
        );

Map<String, dynamic> _$$MustPlanProductAttributeGroupImplToJson(
        _$MustPlanProductAttributeGroupImpl instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'is_must': instance.isMust,
      'locale_name': instance.localeName,
      'max_select': instance.maxSelect,
    };

_$MustPlanProductAttributeImpl _$$MustPlanProductAttributeImplFromJson(
        Map<String, dynamic> json) =>
    _$MustPlanProductAttributeImpl(
      isDefaultSelected: json['is_default_selected'] as bool,
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$MustPlanProductAttributeImplToJson(
        _$MustPlanProductAttributeImpl instance) =>
    <String, dynamic>{
      'is_default_selected': instance.isDefaultSelected,
      'locale_name': instance.localeName,
      'uuid': instance.uuid,
    };

_$MustPlanProductFlavorImpl _$$MustPlanProductFlavorImplFromJson(
        Map<String, dynamic> json) =>
    _$MustPlanProductFlavorImpl(
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      stockNum: (json['stock_num'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$MustPlanProductFlavorImplToJson(
        _$MustPlanProductFlavorImpl instance) =>
    <String, dynamic>{
      'locale_name': instance.localeName,
      'price': instance.price,
      'stock_num': instance.stockNum,
      'uuid': instance.uuid,
    };

_$MustPlanSaucesImpl _$$MustPlanSaucesImplFromJson(Map<String, dynamic> json) =>
    _$MustPlanSaucesImpl(
      isMust: json['is_must'] as bool,
      list: (json['list'] as List<dynamic>)
          .map((e) => MustPlanProductSauce.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxSelect: (json['max_select'] as num).toInt(),
    );

Map<String, dynamic> _$$MustPlanSaucesImplToJson(
        _$MustPlanSaucesImpl instance) =>
    <String, dynamic>{
      'is_must': instance.isMust,
      'list': instance.list,
      'max_select': instance.maxSelect,
    };

_$ProductSauceImpl _$$ProductSauceImplFromJson(Map<String, dynamic> json) =>
    _$ProductSauceImpl(
      isDefaultSelected: json['is_default_selected'] as bool,
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      stockNum: (json['stock_num'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductSauceImplToJson(_$ProductSauceImpl instance) =>
    <String, dynamic>{
      'is_default_selected': instance.isDefaultSelected,
      'locale_name': instance.localeName,
      'price': instance.price,
      'stock_num': instance.stockNum,
      'uuid': instance.uuid,
    };
