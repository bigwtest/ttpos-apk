// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsAttributeGroupsImpl _$$GoodsAttributeGroupsImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsAttributeGroupsImpl(
      attributes: BaseList<GoodsAttributes>.fromJson(
          json['attributes'] as Map<String, dynamic>,
          (value) => GoodsAttributes.fromJson(value as Map<String, dynamic>)),
      isMust: json['is_must'] as bool,
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      maxSelect: (json['max_select'] as num).toInt(),
      uuid: (json['uuid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GoodsAttributeGroupsImplToJson(
        _$GoodsAttributeGroupsImpl instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'is_must': instance.isMust,
      'locale_name': instance.localeName,
      'max_select': instance.maxSelect,
      'uuid': instance.uuid,
    };
