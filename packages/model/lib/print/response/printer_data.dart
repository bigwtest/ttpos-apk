import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'printer_data.freezed.dart';
part 'printer_data.g.dart';

///resp.PrinterData
@freezed
class RespPrinterData with _$RespPrinterData {
  const factory RespPrinterData({
    @JsonKey(name: "copies") required int copies,
    @JsonKey(name: "data") required String data,
    @JsonKey(name: "print_method") required int printMethod,
    @JsonKey(name: "is_cashier_printer") required bool isCashierPrinter,
    @JsonKey(name: "is_usb_printer") bool? isUsbPrinter,
    @JsonKey(name: "printer_config") required String printerConfig, // 打印机配置，根据这个字段来分组
    @JsonKey(name: "printer_type") required String printerType,
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "printing_time") @Default(200) int printingTime,
  }) = _RespPrinterData;

  factory RespPrinterData.fromJson(Map<String, dynamic> json) => _$RespPrinterDataFromJson(json);
}

/// 扩展 RespPrinterData，添加 toJsonString 方法
extension RespPrinterDataX on RespPrinterData {
  /// 将对象转换为 JSON 字符串
  String toJsonString() => jsonEncode(toJson());
}
