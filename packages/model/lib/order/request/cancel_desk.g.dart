// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_desk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCancelDeskImpl _$$RequestCancelDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCancelDeskImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      cancelReason: json['cancel_reason'] as String,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$RequestCancelDeskImplToJson(
        _$RequestCancelDeskImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'cancel_reason': instance.cancelReason,
      'password': instance.password,
    };
