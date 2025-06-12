// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseOrderDetailsImpl _$$ResponseOrderDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrderDetailsImpl(
      detail: Detail.fromJson(json['detail'] as Map<String, dynamic>),
      extra: Extra.fromJson(json['extra'] as Map<String, dynamic>),
      operationLog:
          OperationLog.fromJson(json['operation_log'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseOrderDetailsImplToJson(
        _$ResponseOrderDetailsImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'extra': instance.extra,
      'operation_log': instance.operationLog,
    };
