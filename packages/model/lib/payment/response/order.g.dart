// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespPaymentOrderImpl _$$RespPaymentOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RespPaymentOrderImpl(
      amount: SafetyNumber.fromJson(json['amount']),
      disabledCancel: json['disabled_cancel'] as bool,
      paymentAmount: SafetyNumber.fromJson(json['payment_amount']),
      paymentCommissionFee:
          SafetyNumber.fromJson(json['payment_commission_fee']),
      paymentMethodCode: (json['payment_method_code'] as num).toInt(),
      paymentMethodName: json['payment_method_name'] as String,
      paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespPaymentOrderImplToJson(
        _$RespPaymentOrderImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'disabled_cancel': instance.disabledCancel,
      'payment_amount': instance.paymentAmount,
      'payment_commission_fee': instance.paymentCommissionFee,
      'payment_method_code': instance.paymentMethodCode,
      'payment_method_name': instance.paymentMethodName,
      'payment_method_uuid': instance.paymentMethodUuid,
      'uuid': instance.uuid,
    };
