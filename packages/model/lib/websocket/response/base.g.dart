// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebsocketReceiveMessageImpl _$$WebsocketReceiveMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$WebsocketReceiveMessageImpl(
      event: json['event'] as String,
      state: (json['state'] as num).toInt(),
      msg: json['msg'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      msgId: (json['msg_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WebsocketReceiveMessageImplToJson(
        _$WebsocketReceiveMessageImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'state': instance.state,
      'msg': instance.msg,
      'data': instance.data,
      'msg_id': instance.msgId,
    };
