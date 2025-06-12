// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestDiscountDeskImpl _$$RequestDiscountDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestDiscountDeskImpl(
      discountMethod: (json['discount_method'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      zeroRule: (json['zero_rule'] as num).toInt(),
      discountType: (json['discount_type'] as num).toInt(),
      discount: (json['discount'] as num).toDouble(),
    );

Map<String, dynamic> _$$RequestDiscountDeskImplToJson(
        _$RequestDiscountDeskImpl instance) =>
    <String, dynamic>{
      'discount_method': instance.discountMethod,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'price': instance.price,
      'zero_rule': instance.zeroRule,
      'discount_type': instance.discountType,
      'discount': instance.discount,
    };
