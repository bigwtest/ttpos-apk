// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unprocessed_call_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseUnprocessedCallListImpl _$$ResponseUnprocessedCallListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseUnprocessedCallListImpl(
      callType: (json['call_type'] as num).toInt(),
      deskNo: json['desk_no'] as String,
      deskUuid: (json['desk_uuid'] as num).toInt(),
      isSend: (json['is_send'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseUnprocessedCallListImplToJson(
        _$ResponseUnprocessedCallListImpl instance) =>
    <String, dynamic>{
      'call_type': instance.callType,
      'desk_no': instance.deskNo,
      'desk_uuid': instance.deskUuid,
      'is_send': instance.isSend,
      'uuid': instance.uuid,
    };
