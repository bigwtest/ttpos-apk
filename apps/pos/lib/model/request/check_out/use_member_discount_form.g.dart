// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_member_discount_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestUseMemberDiscountFormImpl _$$RequestUseMemberDiscountFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestUseMemberDiscountFormImpl(
      memberUuid: (json['member_uuid'] as num).toInt(),
      password: json['password'] as String,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestUseMemberDiscountFormImplToJson(
        _$RequestUseMemberDiscountFormImpl instance) =>
    <String, dynamic>{
      'member_uuid': instance.memberUuid,
      'password': instance.password,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
