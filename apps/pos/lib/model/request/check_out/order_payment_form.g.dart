// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payment_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderPaymentFormImpl _$$RequestOrderPaymentFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderPaymentFormImpl(
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderPaymentFormImplToJson(
        _$RequestOrderPaymentFormImpl instance) =>
    <String, dynamic>{
      'payment_amount': instance.paymentAmount,
      'payment_method_uuid': instance.paymentMethodUuid,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
