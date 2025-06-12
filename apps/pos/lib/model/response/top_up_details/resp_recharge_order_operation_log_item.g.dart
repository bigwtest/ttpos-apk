// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_recharge_order_operation_log_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespRechargeOrderOperationLogItemImpl
    _$$RespRechargeOrderOperationLogItemImplFromJson(
            Map<String, dynamic> json) =>
        _$RespRechargeOrderOperationLogItemImpl(
          client: json['client'] as String,
          createTime: (json['create_time'] as num).toInt(),
          description: json['description'] as String,
          realName: json['real_name'] as String,
          username: json['username'] as String,
        );

Map<String, dynamic> _$$RespRechargeOrderOperationLogItemImplToJson(
        _$RespRechargeOrderOperationLogItemImpl instance) =>
    <String, dynamic>{
      'client': instance.client,
      'create_time': instance.createTime,
      'description': instance.description,
      'real_name': instance.realName,
      'username': instance.username,
    };
