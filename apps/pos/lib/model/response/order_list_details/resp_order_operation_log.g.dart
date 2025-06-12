// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_order_operation_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespOrderOperationLogImpl _$$RespOrderOperationLogImplFromJson(
        Map<String, dynamic> json) =>
    _$RespOrderOperationLogImpl(
      createTime: (json['create_time'] as num).toInt(),
      description: json['description'] as String,
      payType: (json['pay_type'] as List<dynamic>)
          .map((e) => RespOrderOperationLogPaymentMethod.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      refundType: (json['refund_type'] as num).toInt(),
      source: json['source'] as String,
      userEmail: json['user_email'] as String,
      userName: json['user_name'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespOrderOperationLogImplToJson(
        _$RespOrderOperationLogImpl instance) =>
    <String, dynamic>{
      'create_time': instance.createTime,
      'description': instance.description,
      'pay_type': instance.payType,
      'refund_type': instance.refundType,
      'source': instance.source,
      'user_email': instance.userEmail,
      'user_name': instance.userName,
      'uuid': instance.uuid,
    };

_$RespOrderOperationLogPaymentMethodImpl
    _$$RespOrderOperationLogPaymentMethodImplFromJson(
            Map<String, dynamic> json) =>
        _$RespOrderOperationLogPaymentMethodImpl(
          accountName: json['account_name'] as String,
          accountNo: json['account_no'] as String,
          bankCode: json['bank_code'] as String,
          name: json['name'] as String,
          paymentOrderId: (json['payment_order_id'] as num).toInt(),
          price: json['price'] as String,
          refundMoney: json['refund_money'] as String,
          refundStatus: (json['refund_status'] as num).toInt(),
          remark: json['remark'] as String,
          returnAmountUuid: (json['return_amount_uuid'] as num).toInt(),
          returnOrderUuid: (json['return_order_uuid'] as num).toInt(),
          unit: json['unit'] as String,
          value: (json['value'] as num).toInt(),
        );

Map<String, dynamic> _$$RespOrderOperationLogPaymentMethodImplToJson(
        _$RespOrderOperationLogPaymentMethodImpl instance) =>
    <String, dynamic>{
      'account_name': instance.accountName,
      'account_no': instance.accountNo,
      'bank_code': instance.bankCode,
      'name': instance.name,
      'payment_order_id': instance.paymentOrderId,
      'price': instance.price,
      'refund_money': instance.refundMoney,
      'refund_status': instance.refundStatus,
      'remark': instance.remark,
      'return_amount_uuid': instance.returnAmountUuid,
      'return_order_uuid': instance.returnOrderUuid,
      'unit': instance.unit,
      'value': instance.value,
    };
