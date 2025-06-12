// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_for_meals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderForMealsImpl _$$RequestOrderForMealsImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderForMealsImpl(
      billType: (json['bill_type'] as num).toInt(),
      dateType: (json['date_type'] as num).toInt(),
      diningMethod: (json['dining_method'] as num).toInt(),
      enableCreateTime: json['enable_create_time'] as bool,
      enablePayTime: json['enable_pay_time'] as bool,
      orderNo: json['order_no'] as String,
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      queryEndTime: (json['query_end_time'] as num).toInt(),
      queryStartTime: (json['query_start_time'] as num).toInt(),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderForMealsImplToJson(
        _$RequestOrderForMealsImpl instance) =>
    <String, dynamic>{
      'bill_type': instance.billType,
      'date_type': instance.dateType,
      'dining_method': instance.diningMethod,
      'enable_create_time': instance.enableCreateTime,
      'enable_pay_time': instance.enablePayTime,
      'order_no': instance.orderNo,
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
      'query_end_time': instance.queryEndTime,
      'query_start_time': instance.queryStartTime,
      'status': instance.status,
    };
