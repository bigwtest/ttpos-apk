// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_re_return.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderReReturnImpl _$$RequestOrderReReturnImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderReReturnImpl(
      accountName: json['account_name'] as String?,
      accountNo: json['account_no'] as String?,
      bankCode: json['bank_code'] as String?,
      returnAmountUuid: (json['return_amount_uuid'] as num).toInt(),
      returnOrderUuid: (json['return_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderReReturnImplToJson(
        _$RequestOrderReReturnImpl instance) =>
    <String, dynamic>{
      'account_name': instance.accountName,
      'account_no': instance.accountNo,
      'bank_code': instance.bankCode,
      'return_amount_uuid': instance.returnAmountUuid,
      'return_order_uuid': instance.returnOrderUuid,
    };
