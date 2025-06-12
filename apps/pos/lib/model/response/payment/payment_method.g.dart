// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodImpl _$$PaymentMethodImplFromJson(Map<String, dynamic> json) =>
    _$PaymentMethodImpl(
      code: (json['code'] as num).toInt(),
      feePercent: (json['fee_percent'] as num).toDouble(),
      logo: json['logo'] as String,
      paymentName: json['payment_name'] as String,
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
      'qrcode': instance.qrcode,
      'source': instance.source,
      'source_text': instance.sourceText,
      'uuid': instance.uuid,
    };
