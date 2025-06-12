// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestGetMemberDiscountImpl _$$RequestGetMemberDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestGetMemberDiscountImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      memberUuid: (json['member_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestGetMemberDiscountImplToJson(
        _$RequestGetMemberDiscountImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'member_uuid': instance.memberUuid,
    };

_$RequestUseMemberDiscountImpl _$$RequestUseMemberDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestUseMemberDiscountImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      memberUuid: (json['member_uuid'] as num).toInt(),
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$RequestUseMemberDiscountImplToJson(
        _$RequestUseMemberDiscountImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'member_uuid': instance.memberUuid,
      'password': instance.password,
    };
