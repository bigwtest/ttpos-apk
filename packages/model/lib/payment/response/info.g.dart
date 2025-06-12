// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentInfoImpl _$$PaymentInfoImplFromJson(Map<String, dynamic> json) =>
    _$PaymentInfoImpl(
      amounts: BaseList<PaymentAmount>.fromJson(
          json['amounts'] as Map<String, dynamic>,
          (value) => PaymentAmount.fromJson(value as Map<String, dynamic>)),
      memberInfo: json['member_info'] == null
          ? null
          : Member.fromJson(json['member_info'] as Map<String, dynamic>),
      paymentMethods: BaseList<PaymentMethod>.fromJson(
          json['payment_methods'] as Map<String, dynamic>,
          (value) => PaymentMethod.fromJson(value as Map<String, dynamic>)),
      paymentOrders: BaseList<PaymentOrder>.fromJson(
          json['payment_orders'] as Map<String, dynamic>,
          (value) => PaymentOrder.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$PaymentInfoImplToJson(_$PaymentInfoImpl instance) =>
    <String, dynamic>{
      'amounts': instance.amounts,
      'member_info': instance.memberInfo,
      'payment_methods': instance.paymentMethods,
      'payment_orders': instance.paymentOrders,
    };
