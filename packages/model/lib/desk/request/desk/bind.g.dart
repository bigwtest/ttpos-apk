// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestDeskBindImpl _$$RequestDeskBindImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestDeskBindImpl(
      deskUuid: (json['desk_uuid'] as num).toInt(),
      oldDeskUuid: (json['old_desk_uuid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RequestDeskBindImplToJson(
        _$RequestDeskBindImpl instance) =>
    <String, dynamic>{
      'desk_uuid': instance.deskUuid,
      'old_desk_uuid': instance.oldDeskUuid,
    };
