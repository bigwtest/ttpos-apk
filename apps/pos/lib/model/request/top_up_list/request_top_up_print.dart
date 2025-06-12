import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_top_up_print.freezed.dart';
part 'request_top_up_print.g.dart';

@unfreezed
class RequestTopUpPrint with _$RequestTopUpPrint {
  factory RequestTopUpPrint({
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
    @JsonKey(name: "print_lang") required String printLang,
  }) = _RequestTopUpPrint;

  factory RequestTopUpPrint.fromJson(Map<String, dynamic> json) => _$RequestTopUpPrintFromJson(json);
}
