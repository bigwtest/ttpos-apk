// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_print.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderPrintImpl _$$RequestOrderPrintImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderPrintImpl(
      payMethodUuid: (json['pay_method_uuid'] as num?)?.toInt(),
      printLang: json['print_lang'] as String?,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderPrintImplToJson(
        _$RequestOrderPrintImpl instance) =>
    <String, dynamic>{
      'pay_method_uuid': instance.payMethodUuid,
      'print_lang': instance.printLang,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
