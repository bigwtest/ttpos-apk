// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_invoice_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderInvoiceInfoImpl _$$OrderInvoiceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderInvoiceInfoImpl(
      companyAddr: json['company_addr'] as String,
      companyName: json['company_name'] as String,
      companyPhone: json['company_phone'] as String,
      companyTaxNumber: json['company_tax_number'] as String,
    );

Map<String, dynamic> _$$OrderInvoiceInfoImplToJson(
        _$OrderInvoiceInfoImpl instance) =>
    <String, dynamic>{
      'company_addr': instance.companyAddr,
      'company_name': instance.companyName,
      'company_phone': instance.companyPhone,
      'company_tax_number': instance.companyTaxNumber,
    };
