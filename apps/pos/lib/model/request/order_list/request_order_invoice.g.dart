// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderInvoicePrintImpl _$$RequestOrderInvoicePrintImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderInvoicePrintImpl(
      companyAddr: json['company_addr'] as String?,
      companyName: json['company_name'] as String?,
      companyPhone: json['company_phone'] as String?,
      companyTaxNumber: json['company_tax_number'] as String?,
      printLang: json['print_lang'] as String?,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderInvoicePrintImplToJson(
        _$RequestOrderInvoicePrintImpl instance) =>
    <String, dynamic>{
      'company_addr': instance.companyAddr,
      'company_name': instance.companyName,
      'company_phone': instance.companyPhone,
      'company_tax_number': instance.companyTaxNumber,
      'print_lang': instance.printLang,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };
