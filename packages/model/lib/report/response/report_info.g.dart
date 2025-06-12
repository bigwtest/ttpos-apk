// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespCashierReportInfoImpl _$$RespCashierReportInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RespCashierReportInfoImpl(
      previousShiftCash: (json['previous_shift_cash'] as num).toDouble(),
      printerData: RespPrinterData.fromJson(
          json['printer_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RespCashierReportInfoImplToJson(
        _$RespCashierReportInfoImpl instance) =>
    <String, dynamic>{
      'previous_shift_cash': instance.previousShiftCash,
      'printer_data': instance.printerData,
    };
