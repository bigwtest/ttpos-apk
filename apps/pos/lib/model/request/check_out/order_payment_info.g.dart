// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payment_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderPaymentInfoImpl _$$RequestOrderPaymentInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderPaymentInfoImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderPaymentInfoImplToJson(
        _$RequestOrderPaymentInfoImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
