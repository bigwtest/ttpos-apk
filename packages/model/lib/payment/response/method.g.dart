// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodImpl _$$PaymentMethodImplFromJson(Map<String, dynamic> json) =>
    _$PaymentMethodImpl(
      code: (json['code'] as num).toInt(),
      feePercent: SafetyNumber.fromJson(json['fee_percent']),
      logo: json['logo'] as String,
      paymentName: json['payment_name'] as String,
      paymentMethod: json['payment_method'] as String?,
      qrcode: json['qrcode'] as String,
      source: (json['source'] as num).toInt(),
      sourceText: json['source_text'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentMethodImplToJson(_$PaymentMethodImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'fee_percent': instance.feePercent,
      'logo': instance.logo,
      'payment_name': instance.paymentName,
      'payment_method': instance.paymentMethod,
      'qrcode': instance.qrcode,
      'source': instance.source,
      'source_text': instance.sourceText,
      'uuid': instance.uuid,
    };
