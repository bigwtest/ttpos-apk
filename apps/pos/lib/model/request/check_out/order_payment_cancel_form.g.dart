// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payment_cancel_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderPaymentCancelFormImpl
    _$$RequestOrderPaymentCancelFormImplFromJson(Map<String, dynamic> json) =>
        _$RequestOrderPaymentCancelFormImpl(
          paymentOrderUuid: (json['payment_order_uuid'] as num).toInt(),
          saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
          saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
        );

Map<String, dynamic> _$$RequestOrderPaymentCancelFormImplToJson(
        _$RequestOrderPaymentCancelFormImpl instance) =>
    <String, dynamic>{
      'payment_order_uuid': instance.paymentOrderUuid,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
