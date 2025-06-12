// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrinterBaseImpl _$$PrinterBaseImplFromJson(Map<String, dynamic> json) =>
    _$PrinterBaseImpl(
      printerList: (json['printer_list'] as List<dynamic>)
          .map((e) => RespPrinterBase.fromJson(e as Map<String, dynamic>))
          .toList(),
      printerTypeList: (json['printer_type_list'] as List<dynamic>)
          .map((e) => RespPrinterBase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PrinterBaseImplToJson(_$PrinterBaseImpl instance) =>
    <String, dynamic>{
      'printer_list': instance.printerList,
      'printer_type_list': instance.printerTypeList,
    };

_$RespPrinterBaseImpl _$$RespPrinterBaseImplFromJson(
        Map<String, dynamic> json) =>
    _$RespPrinterBaseImpl(
      name: json['name'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespPrinterBaseImplToJson(
        _$RespPrinterBaseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };
