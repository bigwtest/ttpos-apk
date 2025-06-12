// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merge_desk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestMergeDeskImpl _$$RequestMergeDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestMergeDeskImpl(
      deskUuids: (json['desk_uuids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestMergeDeskImplToJson(
        _$RequestMergeDeskImpl instance) =>
    <String, dynamic>{
      'desk_uuids': instance.deskUuids,
      'sale_bill_uuid': instance.saleBillUuid,
    };
