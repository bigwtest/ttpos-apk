// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_recharge_order_refund_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RechargeOrderRefundInfoImpl _$$RechargeOrderRefundInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RechargeOrderRefundInfoImpl(
      giftAmount: (json['gift_amount'] as num).toDouble(),
      giftPoint: (json['gift_point'] as num).toDouble(),
      paymentRecords: (json['payment_records'] as List<dynamic>)
          .map((e) => RespRefundRechargeOrderPaymentRecord.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      rechargeAmount: (json['recharge_amount'] as num).toDouble(),
      rechargeMemberInfo: MemberInfo.fromJson(
          json['recharge_member_info'] as Map<String, dynamic>),
      refundableAmount: (json['refundable_amount'] as num).toDouble(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RechargeOrderRefundInfoImplToJson(
        _$RechargeOrderRefundInfoImpl instance) =>
    <String, dynamic>{
      'gift_amount': instance.giftAmount,
      'gift_point': instance.giftPoint,
      'payment_records': instance.paymentRecords,
      'recharge_amount': instance.rechargeAmount,
      'recharge_member_info': instance.rechargeMemberInfo,
      'refundable_amount': instance.refundableAmount,
      'uuid': instance.uuid,
    };

_$RespRefundRechargeOrderPaymentRecordImpl
    _$$RespRefundRechargeOrderPaymentRecordImplFromJson(
            Map<String, dynamic> json) =>
        _$RespRefundRechargeOrderPaymentRecordImpl(
          paymentAmount: (json['payment_amount'] as num).toDouble(),
          paymentName: json['payment_name'] as String,
          refundableAmount: (json['refundable_amount'] as num).toDouble(),
        );

Map<String, dynamic> _$$RespRefundRechargeOrderPaymentRecordImplToJson(
        _$RespRefundRechargeOrderPaymentRecordImpl instance) =>
    <String, dynamic>{
      'payment_amount': instance.paymentAmount,
      'payment_name': instance.paymentName,
      'refundable_amount': instance.refundableAmount,
    };

_$MemberInfoImpl _$$MemberInfoImplFromJson(Map<String, dynamic> json) =>
    _$MemberInfoImpl(
      balance: (json['balance'] as num).toDouble(),
      giftBalance: (json['gift_balance'] as num).toDouble(),
      points: (json['points'] as num).toDouble(),
    );

Map<String, dynamic> _$$MemberInfoImplToJson(_$MemberInfoImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'gift_balance': instance.giftBalance,
      'points': instance.points,
    };
