// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceInfoImpl _$$InvoiceInfoImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceInfoImpl(
      companyAddress: json['companyAddress'] as String,
      companyName: json['companyName'] as String,
      companyTaxNumber: json['companyTaxNumber'] as String,
      companyPhone: json['companyPhone'] as String?,
      printLang: json['printLang'] as String?,
    );

Map<String, dynamic> _$$InvoiceInfoImplToJson(_$InvoiceInfoImpl instance) =>
    <String, dynamic>{
      'companyAddress': instance.companyAddress,
      'companyName': instance.companyName,
      'companyTaxNumber': instance.companyTaxNumber,
      'companyPhone': instance.companyPhone,
      'printLang': instance.printLang,
    };
