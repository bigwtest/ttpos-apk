import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_checkout.freezed.dart';
part 'pre_checkout.g.dart';

@unfreezed
class RespPrinterRequest with _$RespPrinterRequest {
  factory RespPrinterRequest({
    @JsonKey(name: "pay_method_uuid") int? payMethodUuid,
    @JsonKey(name: "print_lang") String? printLang,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RespPrinterRequest;

  factory RespPrinterRequest.fromJson(Map<String, dynamic> json) => _$RespPrinterRequestFromJson(json);
}
