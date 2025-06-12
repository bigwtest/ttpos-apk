// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespPrinterRequestImpl _$$RespPrinterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RespPrinterRequestImpl(
      payMethodUuid: (json['pay_method_uuid'] as num?)?.toInt(),
      printLang: json['print_lang'] as String?,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespPrinterRequestImplToJson(
        _$RespPrinterRequestImpl instance) =>
    <String, dynamic>{
      'pay_method_uuid': instance.payMethodUuid,
      'print_lang': instance.printLang,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
