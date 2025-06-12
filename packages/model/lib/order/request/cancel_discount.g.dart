// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCancelDiscountDeskImpl _$$RequestCancelDiscountDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCancelDiscountDeskImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestCancelDiscountDeskImplToJson(
        _$RequestCancelDiscountDeskImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
