import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_print.freezed.dart';
part 'request_order_print.g.dart';

@freezed
class RequestOrderPrint with _$RequestOrderPrint {
  factory RequestOrderPrint({
    @JsonKey(name: "pay_method_uuid") int? payMethodUuid,
    @JsonKey(name: "print_lang") String? printLang,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestOrderPrint;

  factory RequestOrderPrint.fromJson(Map<String, dynamic> json) => _$RequestOrderPrintFromJson(json);
}
