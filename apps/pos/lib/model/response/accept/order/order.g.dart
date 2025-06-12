// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcceptOrderImpl _$$AcceptOrderImplFromJson(Map<String, dynamic> json) =>
    _$AcceptOrderImpl(
      deskNo: json['desk_no'] as String,
      deskRegionUuid: (json['desk_region_uuid'] as num).toInt(),
      h5OrderUuid: (json['h5_order_uuid'] as num).toInt(),
      handleTime: (json['handle_time'] as num).toInt(),
      num: (json['num'] as num).toInt(),
      orderTime: (json['order_time'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      waitTime: (json['wait_time'] as num).toInt(),
    );

Map<String, dynamic> _$$AcceptOrderImplToJson(_$AcceptOrderImpl instance) =>
    <String, dynamic>{
      'desk_no': instance.deskNo,
      'desk_region_uuid': instance.deskRegionUuid,
      'h5_order_uuid': instance.h5OrderUuid,
      'handle_time': instance.handleTime,
      'num': instance.num,
      'order_time': instance.orderTime,
      'price': instance.price,
      'sale_bill_uuid': instance.saleBillUuid,
      'status': instance.status,
      'wait_time': instance.waitTime,
    };
