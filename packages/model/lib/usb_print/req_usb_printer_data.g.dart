// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_usb_printer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqUsbPrinterDataImpl _$$ReqUsbPrinterDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ReqUsbPrinterDataImpl(
      mName: json['m_name'] as String?,
      name: json['name'] as String?,
      pid: json['pid'],
      sn: json['sn'] as String?,
      vid: json['vid'],
      usbPort: json['usb_port'] as String?,
    );

Map<String, dynamic> _$$ReqUsbPrinterDataImplToJson(
        _$ReqUsbPrinterDataImpl instance) =>
    <String, dynamic>{
      'm_name': instance.mName,
      'name': instance.name,
      'pid': instance.pid,
      'sn': instance.sn,
      'vid': instance.vid,
      'usb_port': instance.usbPort,
    };
