import 'package:freezed_annotation/freezed_annotation.dart';

part 'printer_list.freezed.dart';
part 'printer_list.g.dart';

@freezed
class PrinterList with _$PrinterList {
  factory PrinterList({
    @JsonKey(name: "list") required List<RespPrinterLogData> list,
    @JsonKey(name: "meta") required Meta meta,
  }) = _PrinterList;

  factory PrinterList.fromJson(Map<String, dynamic> json) => _$PrinterListFromJson(json);
}

///resp.PrinterLogData
@freezed
class RespPrinterLogData with _$RespPrinterLogData {
  const factory RespPrinterLogData({
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "data_type_name") required String dataTypeName,
    @JsonKey(name: "order_no") required String orderNo,
    @JsonKey(name: "printer_name") required String printerName,
    @JsonKey(name: "printer_time") required int printerTime,
    @JsonKey(name: "reason") required String reason,
    @JsonKey(name: "rule_name") required String ruleName,
    @JsonKey(name: "serial_no") required String serialNo,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "status_text") required String statusText,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespPrinterLogData;

  factory RespPrinterLogData.fromJson(Map<String, dynamic> json) => _$RespPrinterLogDataFromJson(json);
}

///Meta信息
///
///dto.PageResponse
@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "page_no") required int pageNo,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "total") required int total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
