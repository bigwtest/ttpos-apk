// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestMemberDiscountImpl _$$RequestMemberDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestMemberDiscountImpl(
      memberUuid: (json['member_uuid'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestMemberDiscountImplToJson(
        _$RequestMemberDiscountImpl instance) =>
    <String, dynamic>{
      'member_uuid': instance.memberUuid,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
