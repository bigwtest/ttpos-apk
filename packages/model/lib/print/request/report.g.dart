// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqReportPrinterDataImpl _$$ReqReportPrinterDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ReqReportPrinterDataImpl(
      uuid: (json['uuid'] as num).toInt(),
      reason: json['reason'] as String?,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$ReqReportPrinterDataImplToJson(
        _$ReqReportPrinterDataImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'reason': instance.reason,
      'status': instance.status,
    };
