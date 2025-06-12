// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsCategoryImpl _$$GoodsCategoryImplFromJson(Map<String, dynamic> json) =>
    _$GoodsCategoryImpl(
      children: GoodsCategoryChildren.fromJson(
          json['children'] as Map<String, dynamic>),
      isSpecial: json['is_special'] as bool,
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      parentUuid: (json['parent_uuid'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
      categoryKey: json['category_key'] as String,
    );

Map<String, dynamic> _$$GoodsCategoryImplToJson(_$GoodsCategoryImpl instance) =>
    <String, dynamic>{
      'children': instance.children,
      'is_special': instance.isSpecial,
      'locale_name': instance.localeName,
      'parent_uuid': instance.parentUuid,
      'uuid': instance.uuid,
      'category_key': instance.categoryKey,
    };

_$GoodsCategoryChildrenImpl _$$GoodsCategoryChildrenImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsCategoryChildrenImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => GoodsCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoodsCategoryChildrenImplToJson(
        _$GoodsCategoryChildrenImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
