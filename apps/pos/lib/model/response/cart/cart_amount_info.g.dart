// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_amount_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCartAmountInfoImpl _$$ResponseCartAmountInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCartAmountInfoImpl(
      productOriginAmount: SafetyNumber.fromJson(json['product_origin_amount']),
      productAmount: SafetyNumber.fromJson(json['product_amount']),
      serviceAmount: SafetyNumber.fromJson(json['service_amount']),
      taxAmount: SafetyNumber.fromJson(json['tax_amount']),
      discountAmount: SafetyNumber.fromJson(json['discount_amount']),
      memberDiscountAmount:
          SafetyNumber.fromJson(json['member_discount_amount']),
      amount: SafetyNumber.fromJson(json['amount']),
    );

Map<String, dynamic> _$$ResponseCartAmountInfoImplToJson(
        _$ResponseCartAmountInfoImpl instance) =>
    <String, dynamic>{
      'product_origin_amount': instance.productOriginAmount,
      'product_amount': instance.productAmount,
      'service_amount': instance.serviceAmount,
      'tax_amount': instance.taxAmount,
      'discount_amount': instance.discountAmount,
      'member_discount_amount': instance.memberDiscountAmount,
      'amount': instance.amount,
    };
