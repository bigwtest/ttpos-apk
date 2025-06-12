// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespPrinterDataImpl _$$RespPrinterDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RespPrinterDataImpl(
      copies: (json['copies'] as num).toInt(),
      data: json['data'] as String,
      printMethod: (json['print_method'] as num).toInt(),
      isCashierPrinter: json['is_cashier_printer'] as bool,
      isUsbPrinter: json['is_usb_printer'] as bool?,
      printerConfig: json['printer_config'] as String,
      printerType: json['printer_type'] as String,
      uuid: (json['uuid'] as num).toInt(),
      printingTime: (json['printing_time'] as num?)?.toInt() ?? 200,
    );

Map<String, dynamic> _$$RespPrinterDataImplToJson(
        _$RespPrinterDataImpl instance) =>
    <String, dynamic>{
      'copies': instance.copies,
      'data': instance.data,
      'print_method': instance.printMethod,
      'is_cashier_printer': instance.isCashierPrinter,
      'is_usb_printer': instance.isUsbPrinter,
      'printer_config': instance.printerConfig,
      'printer_type': instance.printerType,
      'uuid': instance.uuid,
      'printing_time': instance.printingTime,
    };
