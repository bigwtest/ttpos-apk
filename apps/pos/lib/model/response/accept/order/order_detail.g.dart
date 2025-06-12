// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcceptOrderDetailImpl _$$AcceptOrderDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$AcceptOrderDetailImpl(
      cashier: json['cashier'] as String,
      deskNo: json['desk_no'] as String,
      deskUuid: (json['desk_uuid'] as num).toInt(),
      h5OrderUuid: (json['h5_order_uuid'] as num).toInt(),
      handleTime: (json['handle_time'] as num).toInt(),
      orderTime: (json['order_time'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      waitTime: (json['wait_time'] as num).toInt(),
    );

Map<String, dynamic> _$$AcceptOrderDetailImplToJson(
        _$AcceptOrderDetailImpl instance) =>
    <String, dynamic>{
      'cashier': instance.cashier,
      'desk_no': instance.deskNo,
      'desk_uuid': instance.deskUuid,
      'h5_order_uuid': instance.h5OrderUuid,
      'handle_time': instance.handleTime,
      'order_time': instance.orderTime,
      'price': instance.price,
      'sale_bill_uuid': instance.saleBillUuid,
      'status': instance.status,
      'wait_time': instance.waitTime,
    };
