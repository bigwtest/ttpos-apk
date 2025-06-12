// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationLogImpl _$$OperationLogImplFromJson(Map<String, dynamic> json) =>
    _$OperationLogImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespOrderOperationLog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OperationLogImplToJson(_$OperationLogImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
