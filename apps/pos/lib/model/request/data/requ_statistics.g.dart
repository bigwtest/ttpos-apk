// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requ_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequStatisticsImpl _$$RequStatisticsImplFromJson(Map<String, dynamic> json) =>
    _$RequStatisticsImpl(
      categoryType: (json['category_type'] as num).toInt(),
      queryEndTime: (json['query_end_time'] as num).toInt(),
      queryStartTime: (json['query_start_time'] as num).toInt(),
      timeType: (json['time_type'] as num).toInt(),
    );

Map<String, dynamic> _$$RequStatisticsImplToJson(
        _$RequStatisticsImpl instance) =>
    <String, dynamic>{
      'category_type': instance.categoryType,
      'query_end_time': instance.queryEndTime,
      'query_start_time': instance.queryStartTime,
      'time_type': instance.timeType,
    };
