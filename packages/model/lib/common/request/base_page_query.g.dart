// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_page_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasePageQueryImpl _$$BasePageQueryImplFromJson(Map<String, dynamic> json) =>
    _$BasePageQueryImpl(
      pageNo: (json['page_no'] as num?)?.toInt(),
      pageSize: (json['page_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BasePageQueryImplToJson(_$BasePageQueryImpl instance) =>
    <String, dynamic>{
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
    };
