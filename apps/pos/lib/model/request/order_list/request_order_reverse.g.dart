// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_reverse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderReverseImpl _$$RequestOrderReverseImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderReverseImpl(
      deskUuid: (json['desk_uuid'] as num?)?.toInt(),
      hideOrder: json['hide_order'] as bool?,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderReverseImplToJson(
        _$RequestOrderReverseImpl instance) =>
    <String, dynamic>{
      'desk_uuid': instance.deskUuid,
      'hide_order': instance.hideOrder,
      'sale_bill_uuid': instance.saleBillUuid,
    };
