// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsProductImpl _$$GoodsProductImplFromJson(Map<String, dynamic> json) =>
    _$GoodsProductImpl(
      attributeGroups: BaseList<GoodsAttributeGroups>.fromJson(
          json['attribute_groups'] as Map<String, dynamic>,
          (value) =>
              GoodsAttributeGroups.fromJson(value as Map<String, dynamic>)),
      flavors: BaseList<GoodsFlavors>.fromJson(
          json['flavors'] as Map<String, dynamic>,
          (value) => GoodsFlavors.fromJson(value as Map<String, dynamic>)),
      image: json['image'] as String,
      limitNum: (json['limit_num'] as num).toInt(),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      price: SafetyNumber.fromJson(json['price']),
      sauces: GoodsSaucesList.fromJson(json['sauces'] as Map<String, dynamic>),
      unit: LocaleName.fromJson(json['unit'] as Map<String, dynamic>),
      uuid: (json['uuid'] as num).toInt(),
      categoryUuid: (json['category_uuid'] as num?)?.toInt(),
      firstCategoryUuid: (json['first_category_uuid'] as num?)?.toInt(),
      specialCategoryUuid: (json['special_category_uuid'] as num?)?.toInt(),
      describe: json['describe'] as String?,
      isBuffet: json['is_buffet'] as bool?,
    );

Map<String, dynamic> _$$GoodsProductImplToJson(_$GoodsProductImpl instance) =>
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
      'category_uuid': instance.categoryUuid,
      'first_category_uuid': instance.firstCategoryUuid,
      'special_category_uuid': instance.specialCategoryUuid,
      'describe': instance.describe,
      'is_buffet': instance.isBuffet,
    };
