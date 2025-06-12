import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_usb_printer_data.freezed.dart';
part 'req_usb_printer_data.g.dart';

@freezed
abstract class ReqUsbPrinterData with _$ReqUsbPrinterData {
  factory ReqUsbPrinterData({
    @JsonKey(name: "m_name") String? mName,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "pid") dynamic pid,
    @JsonKey(name: "sn") String? sn,
    @JsonKey(name: "vid") dynamic vid,
    @JsonKey(name: "usb_port") String? usbPort,
  }) = _ReqUsbPrinterData;

  factory ReqUsbPrinterData.fromJson(Map<String, dynamic> json) => _$ReqUsbPrinterDataFromJson(json);
}
