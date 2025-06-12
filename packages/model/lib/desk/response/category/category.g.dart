// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeskCategoryImpl _$$DeskCategoryImplFromJson(Map<String, dynamic> json) =>
    _$DeskCategoryImpl(
      region: DeskRegion.fromJson(json['region'] as Map<String, dynamic>),
      type: DeskType.fromJson(json['type'] as Map<String, dynamic>),
      updateTime: (json['update_time'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DeskCategoryImplToJson(_$DeskCategoryImpl instance) =>
    <String, dynamic>{
      'region': instance.region,
      'type': instance.type,
      'update_time': instance.updateTime,
    };
