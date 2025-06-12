// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desk_region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeskRegionImpl _$$DeskRegionImplFromJson(Map<String, dynamic> json) =>
    _$DeskRegionImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => DeskRegionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeskRegionImplToJson(_$DeskRegionImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
