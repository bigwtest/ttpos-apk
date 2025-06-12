// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsAttributesImpl _$$GoodsAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsAttributesImpl(
      isDefaultSelected: json['is_default_selected'] as bool,
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$GoodsAttributesImplToJson(
        _$GoodsAttributesImpl instance) =>
    <String, dynamic>{
      'is_default_selected': instance.isDefaultSelected,
      'locale_name': instance.localeName,
      'uuid': instance.uuid,
    };
