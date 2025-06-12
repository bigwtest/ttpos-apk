import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_re_return.freezed.dart';
part 'request_order_re_return.g.dart';

@freezed
class RequestOrderReReturn with _$RequestOrderReReturn {
  factory RequestOrderReReturn({
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "account_no") String? accountNo,
    @JsonKey(name: "bank_code") String? bankCode,
    @JsonKey(name: "return_amount_uuid") required int returnAmountUuid,
    @JsonKey(name: "return_order_uuid") required int returnOrderUuid,
  }) = _RequestOrderReReturn;

  factory RequestOrderReReturn.fromJson(Map<String, dynamic> json) => _$RequestOrderReReturnFromJson(json);
}
