// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpDetailsImpl _$$TopUpDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TopUpDetailsImpl(
      amount: SafetyNumber.fromJson(json['amount']),
      cashier: Cashier.fromJson(json['cashier'] as Map<String, dynamic>),
      chargeDue: SafetyNumber.fromJson(json['charge_due']),
      createTime: (json['create_time'] as num).toInt(),
      extra: Extra.fromJson(json['extra'] as Map<String, dynamic>),
      giftAmount: SafetyNumber.fromJson(json['gift_amount']),
      giftPoint: SafetyNumber.fromJson(json['gift_point']),
      member: Member.fromJson(json['member'] as Map<String, dynamic>),
      operationLog:
          OperationLog.fromJson(json['operation_log'] as Map<String, dynamic>),
      orderNo: json['order_no'] as String,
      paymentMethods: (json['payment_methods'] as List<dynamic>)
          .map((e) => RespRechargeOrderPaymentMethod.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      paymentTime: (json['payment_time'] as num).toInt(),
      rechargeAmount: SafetyNumber.fromJson(json['recharge_amount']),
      status: (json['status'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$TopUpDetailsImplToJson(_$TopUpDetailsImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'cashier': instance.cashier,
      'charge_due': instance.chargeDue,
      'create_time': instance.createTime,
      'extra': instance.extra,
      'gift_amount': instance.giftAmount,
      'gift_point': instance.giftPoint,
      'member': instance.member,
      'operation_log': instance.operationLog,
      'order_no': instance.orderNo,
      'payment_methods': instance.paymentMethods,
      'payment_time': instance.paymentTime,
      'recharge_amount': instance.rechargeAmount,
      'status': instance.status,
      'uuid': instance.uuid,
    };
