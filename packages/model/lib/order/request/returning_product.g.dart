// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'returning_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestReturningProductImpl _$$RequestReturningProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestReturningProductImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
      num: (json['num'] as num).toInt(),
      reason: json['reason'] as String?,
      password: json['password'] as String?,
      returnIds: (json['return_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$RequestReturningProductImplToJson(
        _$RequestReturningProductImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
      'num': instance.num,
      'reason': instance.reason,
      'password': instance.password,
      'return_ids': instance.returnIds,
    };
