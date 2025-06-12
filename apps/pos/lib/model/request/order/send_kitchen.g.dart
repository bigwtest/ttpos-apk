// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_kitchen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderSendKitchenImpl _$$RequestOrderSendKitchenImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderSendKitchenImpl(
      delivery: (json['delivery'] as num).toInt(),
      orderId: (json['order_id'] as num?)?.toInt() ?? 0,
      tableId: (json['table_id'] as num?)?.toInt() ?? 0,
      subOrderId: (json['sub_order_id'] as num?)?.toInt(),
      ignoreMust: (json['ignore_must'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RequestOrderSendKitchenImplToJson(
        _$RequestOrderSendKitchenImpl instance) =>
    <String, dynamic>{
      'delivery': instance.delivery,
      'order_id': instance.orderId,
      'table_id': instance.tableId,
      'sub_order_id': instance.subOrderId,
      'ignore_must': instance.ignoreMust,
    };
