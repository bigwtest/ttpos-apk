// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDataServerPublicKeyImpl _$$ResponseDataServerPublicKeyImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDataServerPublicKeyImpl(
      publicKey: json['key'] as String,
      encryptType: json['type'] as String?,
      clientId: json['id'] as String?,
    );

Map<String, dynamic> _$$ResponseDataServerPublicKeyImplToJson(
        _$ResponseDataServerPublicKeyImpl instance) =>
    <String, dynamic>{
      'key': instance.publicKey,
      'type': instance.encryptType,
      'id': instance.clientId,
    };
