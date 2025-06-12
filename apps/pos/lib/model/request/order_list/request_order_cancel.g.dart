// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_cancel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderCancelImpl _$$RequestOrderCancelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderCancelImpl(
      cancelReason: json['cancel_reason'] as String?,
      password: json['password'] as String?,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderCancelImplToJson(
        _$RequestOrderCancelImpl instance) =>
    <String, dynamic>{
      'cancel_reason': instance.cancelReason,
      'password': instance.password,
      'sale_bill_uuid': instance.saleBillUuid,
    };
