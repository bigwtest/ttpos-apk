// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCreateRechargeOrderImpl _$$RequestCreateRechargeOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCreateRechargeOrderImpl(
      giftAmount: (json['gift_amount'] as num).toDouble(),
      giftPoint: (json['gift_point'] as num).toDouble(),
      memberUuid: (json['member_uuid'] as num).toInt(),
      rechargeAmount: (json['recharge_amount'] as num).toDouble(),
      rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestCreateRechargeOrderImplToJson(
        _$RequestCreateRechargeOrderImpl instance) =>
    <String, dynamic>{
      'gift_amount': instance.giftAmount,
      'gift_point': instance.giftPoint,
      'member_uuid': instance.memberUuid,
      'recharge_amount': instance.rechargeAmount,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };

_$RequestConfirmRechargeOrderImpl _$$RequestConfirmRechargeOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestConfirmRechargeOrderImpl(
      memberUuid: (json['member_uuid'] as num).toInt(),
      rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestConfirmRechargeOrderImplToJson(
        _$RequestConfirmRechargeOrderImpl instance) =>
    <String, dynamic>{
      'member_uuid': instance.memberUuid,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };

_$RequestCreatePaymentOrderImpl _$$RequestCreatePaymentOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCreatePaymentOrderImpl(
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
      rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
      paymentOrderUuid: (json['payment_order_uuid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RequestCreatePaymentOrderImplToJson(
        _$RequestCreatePaymentOrderImpl instance) =>
    <String, dynamic>{
      'payment_amount': instance.paymentAmount,
      'payment_method_uuid': instance.paymentMethodUuid,
      'recharge_order_uuid': instance.rechargeOrderUuid,
      'payment_order_uuid': instance.paymentOrderUuid,
    };

_$RequestCancelPaymentOrderImpl _$$RequestCancelPaymentOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCancelPaymentOrderImpl(
      paymentOrderUuid: (json['payment_order_uuid'] as num).toInt(),
      rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestCancelPaymentOrderImplToJson(
        _$RequestCancelPaymentOrderImpl instance) =>
    <String, dynamic>{
      'payment_order_uuid': instance.paymentOrderUuid,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };

_$RequestPrintRechargeReceiptImpl _$$RequestPrintRechargeReceiptImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestPrintRechargeReceiptImpl(
      printLang: json['print_lang'] as String,
      rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestPrintRechargeReceiptImplToJson(
        _$RequestPrintRechargeReceiptImpl instance) =>
    <String, dynamic>{
      'print_lang': instance.printLang,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };
