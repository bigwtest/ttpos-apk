import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_order.freezed.dart';
part 'payment_order.g.dart';

///resp.ResponsePaymentOrder
@freezed
class ResponsePaymentOrder with _$ResponsePaymentOrder {
  const factory ResponsePaymentOrder({
    @JsonKey(name: "amount") required double amount,
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_commission_fee")
    required double paymentCommissionFee,
    @JsonKey(name: "payment_method_code") required int paymentMethodCode,
    @JsonKey(name: "payment_method_name") required String paymentMethodName,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "uuid") required int uuid,
  }) = _ResponsePaymentOrder;

  factory ResponsePaymentOrder.fromJson(Map<String, dynamic> json) =>
      _$ResponsePaymentOrderFromJson(json);
}
