import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_order_info_pay_types.freezed.dart';
part 'resp_order_info_pay_types.g.dart';

@freezed
class RespOrderInfoPayTypes with _$RespOrderInfoPayTypes {
  factory RespOrderInfoPayTypes({
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "currency_unit") required String currencyUnit,
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_type_name") required String paymentTypeName,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "source") required int source,
    @JsonKey(name: "source_text") required String sourceText,
    @JsonKey(name: "status") required int status,
  }) = _RespOrderInfoPayTypes;

  factory RespOrderInfoPayTypes.fromJson(Map<String, dynamic> json) => _$RespOrderInfoPayTypesFromJson(json);
}
