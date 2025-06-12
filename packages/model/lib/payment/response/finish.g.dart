// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentFinishImpl _$$PaymentFinishImplFromJson(Map<String, dynamic> json) =>
    _$PaymentFinishImpl(
      amountInfo: PaymentFinishAmountInfo.fromJson(
          json['amount_info'] as Map<String, dynamic>),
      payMethods: BaseList<PaymentFinishPayMethod>.fromJson(
          json['pay_methods'] as Map<String, dynamic>,
          (value) =>
              PaymentFinishPayMethod.fromJson(value as Map<String, dynamic>)),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentFinishImplToJson(_$PaymentFinishImpl instance) =>
    <String, dynamic>{
      'amount_info': instance.amountInfo,
      'pay_methods': instance.payMethods,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

_$PaymentFinishAmountInfoImpl _$$PaymentFinishAmountInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentFinishAmountInfoImpl(
      changeAmount: SafetyNumber.fromJson(json['change_amount']),
      orderAmount: SafetyNumber.fromJson(json['order_amount']),
      payAmount: SafetyNumber.fromJson(json['pay_amount']),
    );

Map<String, dynamic> _$$PaymentFinishAmountInfoImplToJson(
        _$PaymentFinishAmountInfoImpl instance) =>
    <String, dynamic>{
      'change_amount': instance.changeAmount,
      'order_amount': instance.orderAmount,
      'pay_amount': instance.payAmount,
    };

_$PaymentFinishPayMethodImpl _$$PaymentFinishPayMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentFinishPayMethodImpl(
      name: json['name'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentFinishPayMethodImplToJson(
        _$PaymentFinishPayMethodImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };
