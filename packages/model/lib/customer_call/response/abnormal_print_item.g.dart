// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abnormal_print_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbnormalPrintItemImpl _$$AbnormalPrintItemImplFromJson(
        Map<String, dynamic> json) =>
    _$AbnormalPrintItemImpl(
      createTime: (json['create_time'] as num).toInt(),
      deskNo: json['desk_no'] as String,
      printerName: json['printer_name'] as String,
      printerUuid: (json['printer_uuid'] as num).toInt(),
      reason: json['reason'] as String?,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$AbnormalPrintItemImplToJson(
        _$AbnormalPrintItemImpl instance) =>
    <String, dynamic>{
      'create_time': instance.createTime,
      'desk_no': instance.deskNo,
      'printer_name': instance.printerName,
      'printer_uuid': instance.printerUuid,
      'reason': instance.reason,
      'sale_bill_uuid': instance.saleBillUuid,
      'uuid': instance.uuid,
    };
