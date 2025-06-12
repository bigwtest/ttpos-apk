// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_finish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseOrderFinishImpl _$$ResponseOrderFinishImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrderFinishImpl(
      amountInfo:
          AmountInfo.fromJson(json['amount_info'] as Map<String, dynamic>),
      payMethods: BaseList<PayMethodItem>.fromJson(
          json['pay_methods'] as Map<String, dynamic>,
          (value) => PayMethodItem.fromJson(value as Map<String, dynamic>)),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseOrderFinishImplToJson(
        _$ResponseOrderFinishImpl instance) =>
    <String, dynamic>{
      'amount_info': instance.amountInfo,
      'pay_methods': instance.payMethods,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

_$AmountInfoImpl _$$AmountInfoImplFromJson(Map<String, dynamic> json) =>
    _$AmountInfoImpl(
      changeAmount: (json['change_amount'] as num).toDouble(),
      orderAmount: (json['order_amount'] as num).toDouble(),
      payAmount: (json['pay_amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$AmountInfoImplToJson(_$AmountInfoImpl instance) =>
    <String, dynamic>{
      'change_amount': instance.changeAmount,
      'order_amount': instance.orderAmount,
      'pay_amount': instance.payAmount,
    };

_$PayMethodItemImpl _$$PayMethodItemImplFromJson(Map<String, dynamic> json) =>
    _$PayMethodItemImpl(
      name: json['name'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$PayMethodItemImplToJson(_$PayMethodItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };
