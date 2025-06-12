// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_order_amount_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsMustOrderAmountInfoImpl _$$GoodsMustOrderAmountInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsMustOrderAmountInfoImpl(
      amount: (json['amount'] as num).toDouble(),
      discountAmount: (json['discount_amount'] as num).toDouble(),
      memberDiscountAmount: (json['member_discount_amount'] as num).toDouble(),
      productAmount: (json['product_amount'] as num).toDouble(),
      productOriginAmount: (json['product_origin_amount'] as num).toDouble(),
      serviceAmount: (json['service_amount'] as num).toDouble(),
      taxAmount: (json['tax_amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$GoodsMustOrderAmountInfoImplToJson(
        _$GoodsMustOrderAmountInfoImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'discount_amount': instance.discountAmount,
      'member_discount_amount': instance.memberDiscountAmount,
      'product_amount': instance.productAmount,
      'product_origin_amount': instance.productOriginAmount,
      'service_amount': instance.serviceAmount,
      'tax_amount': instance.taxAmount,
    };
