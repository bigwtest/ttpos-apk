// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseListMetaImpl _$$BaseListMetaImplFromJson(Map<String, dynamic> json) =>
    _$BaseListMetaImpl(
      total: (json['total'] as num).toInt(),
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$$BaseListMetaImplToJson(_$BaseListMetaImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
    };
