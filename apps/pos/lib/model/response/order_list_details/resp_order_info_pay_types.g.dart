// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_order_info_pay_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespOrderInfoPayTypesImpl _$$RespOrderInfoPayTypesImplFromJson(
        Map<String, dynamic> json) =>
    _$RespOrderInfoPayTypesImpl(
      code: json['code'] as String,
      currencyUnit: json['currency_unit'] as String,
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      paymentTypeName: json['payment_type_name'] as String,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      source: (json['source'] as num).toInt(),
      sourceText: json['source_text'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RespOrderInfoPayTypesImplToJson(
        _$RespOrderInfoPayTypesImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'currency_unit': instance.currencyUnit,
      'payment_amount': instance.paymentAmount,
      'payment_type_name': instance.paymentTypeName,
      'sale_bill_uuid': instance.saleBillUuid,
      'source': instance.source,
      'source_text': instance.sourceText,
      'status': instance.status,
    };
