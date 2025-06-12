import 'package:freezed_annotation/freezed_annotation.dart';

part 'printer.freezed.dart';
part 'printer.g.dart';

@unfreezed
class UsbPrinter with _$UsbPrinter {
  factory UsbPrinter({
    @JsonKey(name: 'vid') required String vid,
    @JsonKey(name: 'pid') required String pid,
    @JsonKey(name: 'sn') required String sn,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'm_name') required String mName,
  }) = _UsbPrinter;

  factory UsbPrinter.fromJson(Map<String, dynamic> json) => _$UsbPrinterFromJson(json);
}
