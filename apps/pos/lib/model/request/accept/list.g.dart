// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestAcceptListImpl _$$RequestAcceptListImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestAcceptListImpl(
      deskRegionUuid: (json['desk_region_uuid'] as num).toInt(),
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestAcceptListImplToJson(
        _$RequestAcceptListImpl instance) =>
    <String, dynamic>{
      'desk_region_uuid': instance.deskRegionUuid,
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
      'status': instance.status,
    };
