// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publickey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCreatePublicKeyImpl _$$ResponseCreatePublicKeyImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCreatePublicKeyImpl(
      clientId: json['client_id'] as String,
      publicKey: json['public_key'] as String,
    );

Map<String, dynamic> _$$ResponseCreatePublicKeyImplToJson(
        _$ResponseCreatePublicKeyImpl instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'public_key': instance.publicKey,
    };
