// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashier_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCashierInfoImpl _$$ResponseCashierInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCashierInfoImpl(
      cashierUuid: (json['cashier_uuid'] as num).toInt(),
      deviceId: json['device_id'] as String,
      remark: json['remark'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$ResponseCashierInfoImplToJson(
        _$ResponseCashierInfoImpl instance) =>
    <String, dynamic>{
      'cashier_uuid': instance.cashierUuid,
      'device_id': instance.deviceId,
      'remark': instance.remark,
      'username': instance.username,
    };
