// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrinterListImpl _$$PrinterListImplFromJson(Map<String, dynamic> json) =>
    _$PrinterListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespPrinterLogData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrinterListImplToJson(_$PrinterListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'meta': instance.meta,
    };

_$RespPrinterLogDataImpl _$$RespPrinterLogDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RespPrinterLogDataImpl(
      createTime: (json['create_time'] as num).toInt(),
      dataTypeName: json['data_type_name'] as String,
      orderNo: json['order_no'] as String,
      printerName: json['printer_name'] as String,
      printerTime: (json['printer_time'] as num).toInt(),
      reason: json['reason'] as String,
      ruleName: json['rule_name'] as String,
      serialNo: json['serial_no'] as String,
      status: (json['status'] as num).toInt(),
      statusText: json['status_text'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespPrinterLogDataImplToJson(
        _$RespPrinterLogDataImpl instance) =>
    <String, dynamic>{
      'create_time': instance.createTime,
      'data_type_name': instance.dataTypeName,
      'order_no': instance.orderNo,
      'printer_name': instance.printerName,
      'printer_time': instance.printerTime,
      'reason': instance.reason,
      'rule_name': instance.ruleName,
      'serial_no': instance.serialNo,
      'status': instance.status,
      'status_text': instance.statusText,
      'uuid': instance.uuid,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      pageNo: (json['page_no'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'page_no': instance.pageNo,
      'page_size': instance.pageSize,
      'total': instance.total,
    };
