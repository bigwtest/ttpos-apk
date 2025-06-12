import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_payment_order.freezed.dart';
part 'resp_payment_order.g.dart';

@unfreezed
class RespPaymentOrder with _$RespPaymentOrder {
  factory RespPaymentOrder({
    @JsonKey(name: "amount") required double amount,
    @JsonKey(name: "disabled_cancel") required bool disabledCancel,
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_commission_fee")
    required double paymentCommissionFee,
    @JsonKey(name: "payment_method_code") required int paymentMethodCode,
    @JsonKey(name: "payment_method_name") required String paymentMethodName,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespPaymentOrder;

  factory RespPaymentOrder.fromJson(Map<String, dynamic> json) =>
      _$RespPaymentOrderFromJson(json);
}
