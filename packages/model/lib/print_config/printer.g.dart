// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsbPrinterImpl _$$UsbPrinterImplFromJson(Map<String, dynamic> json) =>
    _$UsbPrinterImpl(
      vid: json['vid'] as String,
      pid: json['pid'] as String,
      sn: json['sn'] as String,
      name: json['name'] as String,
      mName: json['m_name'] as String,
    );

Map<String, dynamic> _$$UsbPrinterImplToJson(_$UsbPrinterImpl instance) =>
    <String, dynamic>{
      'vid': instance.vid,
      'pid': instance.pid,
      'sn': instance.sn,
      'name': instance.name,
      'm_name': instance.mName,
    };
