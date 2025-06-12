// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_desk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestChangeDeskImpl _$$RequestChangeDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestChangeDeskImpl(
      deskUuid: (json['desk_uuid'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestChangeDeskImplToJson(
        _$RequestChangeDeskImpl instance) =>
    <String, dynamic>{
      'desk_uuid': instance.deskUuid,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
