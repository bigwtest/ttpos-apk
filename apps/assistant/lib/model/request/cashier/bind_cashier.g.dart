// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bind_cashier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestBindCashierImpl _$$RequestBindCashierImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestBindCashierImpl(
      cashierUuid: (json['cashier_uuid'] as num).toInt(),
      deviceId: json['device_id'] as String,
    );

Map<String, dynamic> _$$RequestBindCashierImplToJson(
        _$RequestBindCashierImpl instance) =>
    <String, dynamic>{
      'cashier_uuid': instance.cashierUuid,
      'device_id': instance.deviceId,
    };
