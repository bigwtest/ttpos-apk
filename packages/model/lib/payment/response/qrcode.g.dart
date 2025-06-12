// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrcode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentQrcodeImpl _$$PaymentQrcodeImplFromJson(Map<String, dynamic> json) =>
    _$PaymentQrcodeImpl(
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      paymentOrderUuid: (json['payment_order_uuid'] as num).toInt(),
      qrCode: json['qr_code'] as String,
      qrCodeExpireSec: (json['qr_code_expire_sec'] as num).toInt(),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentQrcodeImplToJson(_$PaymentQrcodeImpl instance) =>
    <String, dynamic>{
      'payment_amount': instance.paymentAmount,
      'payment_order_uuid': instance.paymentOrderUuid,
      'qr_code': instance.qrCode,
      'qr_code_expire_sec': instance.qrCodeExpireSec,
      'status': instance.status,
    };
