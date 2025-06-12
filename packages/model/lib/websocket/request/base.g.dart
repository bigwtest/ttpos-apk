// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebsocketSendMessageImpl _$$WebsocketSendMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$WebsocketSendMessageImpl(
      type: json['type'] as String,
      msgId: (json['msg_id'] as num?)?.toInt(),
      data: json['data'],
    );

Map<String, dynamic> _$$WebsocketSendMessageImplToJson(
        _$WebsocketSendMessageImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'msg_id': instance.msgId,
      'data': instance.data,
    };
