import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_top_up.freezed.dart';
part 'request_top_up.g.dart';

@unfreezed
class RequestTopUp with _$RequestTopUp {
  factory RequestTopUp({
    @JsonKey(name: "date_type") required int dateType,
    @JsonKey(name: "enable_create_time") required bool enableCreateTime,
    @JsonKey(name: "enable_payment_time") required bool enablePaymentTime,
    @JsonKey(name: "order_no") required String orderNo,
    @JsonKey(name: "page_no") required int pageNo,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "query_end_time") required int queryEndTime,
    @JsonKey(name: "query_start_time") required int queryStartTime,
    @JsonKey(name: "status") required int status,
  }) = _RequestTopUp;

  factory RequestTopUp.fromJson(Map<String, dynamic> json) =>
      _$RequestTopUpFromJson(json);
}
