// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCancelPaymentOrderImpl _$$RequestCancelPaymentOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCancelPaymentOrderImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      paymentOrderUuid: (json['payment_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestCancelPaymentOrderImplToJson(
        _$RequestCancelPaymentOrderImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'payment_order_uuid': instance.paymentOrderUuid,
    };
