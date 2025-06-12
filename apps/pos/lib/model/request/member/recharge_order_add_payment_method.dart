import 'package:freezed_annotation/freezed_annotation.dart';

part 'recharge_order_add_payment_method.freezed.dart';
part 'recharge_order_add_payment_method.g.dart';

///req.RequestRechargeOrderAddPaymentMethod
@freezed
class RequestRechargeOrderAddPaymentMethod
    with _$RequestRechargeOrderAddPaymentMethod {
  const factory RequestRechargeOrderAddPaymentMethod({
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestRechargeOrderAddPaymentMethod;

  factory RequestRechargeOrderAddPaymentMethod.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RequestRechargeOrderAddPaymentMethodFromJson(json);
}
