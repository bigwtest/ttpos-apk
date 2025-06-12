// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_print.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqBusinessDataPrintImpl _$$ReqBusinessDataPrintImplFromJson(
        Map<String, dynamic> json) =>
    _$ReqBusinessDataPrintImpl(
      categoryType: (json['category_type'] as num?)?.toInt(),
      queryEndTime: (json['query_end_time'] as num?)?.toInt(),
      queryStartTime: (json['query_start_time'] as num?)?.toInt(),
      statisticsType: (json['statistics_type'] as num?)?.toInt(),
      timeType: (json['time_type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReqBusinessDataPrintImplToJson(
        _$ReqBusinessDataPrintImpl instance) =>
    <String, dynamic>{
      'category_type': instance.categoryType,
      'query_end_time': instance.queryEndTime,
      'query_start_time': instance.queryStartTime,
      'statistics_type': instance.statisticsType,
      'time_type': instance.timeType,
    };
