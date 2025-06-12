// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unprocessed_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseUnprocessedCallImpl _$$ResponseUnprocessedCallImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseUnprocessedCallImpl(
      abnormalPrintCount: (json['abnormal_print_count'] as num).toInt(),
      unprocessedCallCount: (json['unprocessed_call_count'] as num).toInt(),
      updateTime: (json['update_time'] as num?)?.toInt() ?? 0,
      unprocessedH5OrderCount:
          (json['unprocessed_h5_order_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseUnprocessedCallImplToJson(
        _$ResponseUnprocessedCallImpl instance) =>
    <String, dynamic>{
      'abnormal_print_count': instance.abnormalPrintCount,
      'unprocessed_call_count': instance.unprocessedCallCount,
      'update_time': instance.updateTime,
      'unprocessed_h5_order_count': instance.unprocessedH5OrderCount,
    };
