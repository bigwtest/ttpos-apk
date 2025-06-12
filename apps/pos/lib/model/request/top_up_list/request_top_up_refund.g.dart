// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_top_up_refund.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestTopUpRefundImpl _$$RequestTopUpRefundImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestTopUpRefundImpl(
      accountName: json['account_name'] as String?,
      accountNo: json['account_no'] as String?,
      bankCode: json['bank_code'] as String?,
      refundMoney: (json['refund_money'] as num).toDouble(),
      refundType: (json['refund_type'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestTopUpRefundImplToJson(
        _$RequestTopUpRefundImpl instance) =>
    <String, dynamic>{
      'account_name': instance.accountName,
      'account_no': instance.accountNo,
      'bank_code': instance.bankCode,
      'refund_money': instance.refundMoney,
      'refund_type': instance.refundType,
      'uuid': instance.uuid,
    };
