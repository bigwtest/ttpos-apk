// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_print_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespPrintListImpl _$$RespPrintListImplFromJson(Map<String, dynamic> json) =>
    _$RespPrintListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespProductPrinter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RespPrintListImplToJson(_$RespPrintListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$RespProductPrinterImpl _$$RespProductPrinterImplFromJson(
        Map<String, dynamic> json) =>
    _$RespProductPrinterImpl(
      name: json['name'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespProductPrinterImplToJson(
        _$RespProductPrinterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };
