// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payment_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseOrderPaymentInfoImpl _$$ResponseOrderPaymentInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrderPaymentInfoImpl(
      amounts: BaseList<PaymentMethodAmount>.fromJson(
          json['amounts'] as Map<String, dynamic>,
          (value) =>
              PaymentMethodAmount.fromJson(value as Map<String, dynamic>)),
      memberInfo: json['member_info'] == null
          ? null
          : ResponseMemberInfo.fromJson(
              json['member_info'] as Map<String, dynamic>),
      paymentMethods: BaseList<PaymentMethod>.fromJson(
          json['payment_methods'] as Map<String, dynamic>,
          (value) => PaymentMethod.fromJson(value as Map<String, dynamic>)),
      paymentOrders: BaseList<ResponsePaymentOrder>.fromJson(
          json['payment_orders'] as Map<String, dynamic>,
          (value) =>
              ResponsePaymentOrder.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$ResponseOrderPaymentInfoImplToJson(
        _$ResponseOrderPaymentInfoImpl instance) =>
    <String, dynamic>{
      'amounts': instance.amounts,
      'member_info': instance.memberInfo,
      'payment_methods': instance.paymentMethods,
      'payment_orders': instance.paymentOrders,
    };
