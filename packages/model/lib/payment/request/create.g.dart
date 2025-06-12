// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCreatePaymentOrderImpl _$$RequestCreatePaymentOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCreatePaymentOrderImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      paymentOrderUuid: (json['payment_order_uuid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RequestCreatePaymentOrderImplToJson(
        _$RequestCreatePaymentOrderImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'payment_method_uuid': instance.paymentMethodUuid,
      'payment_amount': instance.paymentAmount,
      'payment_order_uuid': instance.paymentOrderUuid,
    };
