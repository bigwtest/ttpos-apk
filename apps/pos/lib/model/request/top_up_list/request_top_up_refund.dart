import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_top_up_refund.freezed.dart';
part 'request_top_up_refund.g.dart';

@unfreezed
class RequestTopUpRefund with _$RequestTopUpRefund {
  factory RequestTopUpRefund({
    @JsonKey(name: "account_name") String? accountName,
    @JsonKey(name: "account_no") String? accountNo,
    @JsonKey(name: "bank_code") String? bankCode,
    @JsonKey(name: "refund_money") required double refundMoney,
    @JsonKey(name: "refund_type") required int refundType,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RequestTopUpRefund;

  factory RequestTopUpRefund.fromJson(Map<String, dynamic> json) => _$RequestTopUpRefundFromJson(json);
}
