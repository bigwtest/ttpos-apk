// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCarouselItemImpl _$$ResponseCarouselItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCarouselItemImpl(
      filePath: json['file_path'] as String,
      realName: json['real_name'] as String,
      sort: json['sort'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ResponseCarouselItemImplToJson(
        _$ResponseCarouselItemImpl instance) =>
    <String, dynamic>{
      'file_path': instance.filePath,
      'real_name': instance.realName,
      'sort': instance.sort,
      'type': instance.type,
    };
