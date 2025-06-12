// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_print_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqPrintListImpl _$$ReqPrintListImplFromJson(Map<String, dynamic> json) =>
    _$ReqPrintListImpl(
      dataType: (json['data_type'] as num).toInt(),
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      printerUuid: (json['printer_uuid'] as num).toInt(),
      queryEndTime: (json['query_end_time'] as num).toInt(),
      queryStartTime: (json['query_start_time'] as num).toInt(),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$ReqPrintListImplToJson(_$ReqPrintListImpl instance) =>
    <String, dynamic>{
      'data_type': instance.dataType,
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
      'printer_uuid': instance.printerUuid,
      'query_end_time': instance.queryEndTime,
      'query_start_time': instance.queryStartTime,
      'status': instance.status,
    };
