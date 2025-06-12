// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCategoryImpl _$$ResponseCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCategoryImpl(
      categoryKey: json['category_key'] as String,
      children: ResponseCategoryChildren.fromJson(
          json['children'] as Map<String, dynamic>),
      isSpecial: json['is_special'] as bool,
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      parentUuid: (json['parent_uuid'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseCategoryImplToJson(
        _$ResponseCategoryImpl instance) =>
    <String, dynamic>{
      'category_key': instance.categoryKey,
      'children': instance.children,
      'is_special': instance.isSpecial,
      'locale_name': instance.localeName,
      'parent_uuid': instance.parentUuid,
      'uuid': instance.uuid,
    };

_$ResponseCategoryChildrenImpl _$$ResponseCategoryChildrenImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCategoryChildrenImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => ResponseCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseCategoryChildrenImplToJson(
        _$ResponseCategoryChildrenImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
