import 'package:freezed_annotation/freezed_annotation.dart';

part 'printer_base.freezed.dart';
part 'printer_base.g.dart';

@freezed
class PrinterBase with _$PrinterBase {
  factory PrinterBase({
    @JsonKey(name: "printer_list") required List<RespPrinterBase> printerList,
    @JsonKey(name: "printer_type_list") required List<RespPrinterBase> printerTypeList,
  }) = _PrinterBase;

  factory PrinterBase.fromJson(Map<String, dynamic> json) => _$PrinterBaseFromJson(json);
}

///resp.PrinterBase
@freezed
class RespPrinterBase with _$RespPrinterBase {
  const factory RespPrinterBase({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespPrinterBase;

  factory RespPrinterBase.fromJson(Map<String, dynamic> json) => _$RespPrinterBaseFromJson(json);
}
