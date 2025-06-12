import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class ReqReportPrinterData with _$ReqReportPrinterData {
  factory ReqReportPrinterData({
    @JsonKey(name: 'uuid') required int uuid,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'status') required int status,
  }) = _ReqReportPrinterData;

  factory ReqReportPrinterData.fromJson(Map<String, dynamic> json) => _$ReqReportPrinterDataFromJson(json);
}
