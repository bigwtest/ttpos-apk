import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_print_list.freezed.dart';
part 'resp_print_list.g.dart';

@freezed
class RespPrintList with _$RespPrintList {
  factory RespPrintList({
    @JsonKey(name: "list") required List<RespProductPrinter> list,
  }) = _RespPrintList;

  factory RespPrintList.fromJson(Map<String, dynamic> json) => _$RespPrintListFromJson(json);
}

///resp.ProductPrinter
@freezed
class RespProductPrinter with _$RespProductPrinter {
  const factory RespProductPrinter({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespProductPrinter;

  factory RespProductPrinter.fromJson(Map<String, dynamic> json) => _$RespProductPrinterFromJson(json);
}
