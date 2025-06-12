import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class PaymentOrder with _$PaymentOrder {
  const factory PaymentOrder({
    @JsonKey(name: "amount") required SafetyNumber amount,
    @JsonKey(name: "disabled_cancel") required bool disabledCancel,
    @JsonKey(name: "payment_amount") required SafetyNumber paymentAmount,
    @JsonKey(name: "payment_commission_fee") required SafetyNumber paymentCommissionFee,
    @JsonKey(name: "payment_method_code") required int paymentMethodCode,
    @JsonKey(name: "payment_method_name") required String paymentMethodName,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespPaymentOrder;

  factory PaymentOrder.fromJson(Map<String, dynamic> json) => _$PaymentOrderFromJson(json);
}
