// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_top_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestTopUpImpl _$$RequestTopUpImplFromJson(Map<String, dynamic> json) =>
    _$RequestTopUpImpl(
      dateType: (json['date_type'] as num).toInt(),
      enableCreateTime: json['enable_create_time'] as bool,
      enablePaymentTime: json['enable_payment_time'] as bool,
      orderNo: json['order_no'] as String,
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      queryEndTime: (json['query_end_time'] as num).toInt(),
      queryStartTime: (json['query_start_time'] as num).toInt(),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestTopUpImplToJson(_$RequestTopUpImpl instance) =>
    <String, dynamic>{
      'date_type': instance.dateType,
      'enable_create_time': instance.enableCreateTime,
      'enable_payment_time': instance.enablePaymentTime,
      'order_no': instance.orderNo,
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
      'query_end_time': instance.queryEndTime,
      'query_start_time': instance.queryStartTime,
      'status': instance.status,
    };
