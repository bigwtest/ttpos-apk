// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqListImpl _$$ReqListImplFromJson(Map<String, dynamic> json) =>
    _$ReqListImpl(
      categoryUuid: (json['category_uuid'] as num?)?.toInt(),
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$$ReqListImplToJson(_$ReqListImpl instance) =>
    <String, dynamic>{
      'category_uuid': instance.categoryUuid,
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
    };
