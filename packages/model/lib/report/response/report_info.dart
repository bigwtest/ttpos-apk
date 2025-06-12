import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

part 'report_info.freezed.dart';
part 'report_info.g.dart';

@freezed
class RespCashierReportInfo with _$RespCashierReportInfo {
  const factory RespCashierReportInfo({
    @JsonKey(name: "previous_shift_cash") required double previousShiftCash,
    @JsonKey(name: "printer_data") required RespPrinterData printerData,
  }) = _RespCashierReportInfo;

  factory RespCashierReportInfo.fromJson(Map<String, dynamic> json) => _$RespCashierReportInfoFromJson(json);
}
