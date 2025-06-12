import 'package:freezed_annotation/freezed_annotation.dart';

part 'recharge_order_cancel_payment_method.freezed.dart';
part 'recharge_order_cancel_payment_method.g.dart';

///req.RechargeOrderCancelPaymentMethodReq
@freezed
class RequestRechargeOrderCancelPaymentMethod
    with _$RequestRechargeOrderCancelPaymentMethod {
  const factory RequestRechargeOrderCancelPaymentMethod({
    @JsonKey(name: "payment_order_uuid") required int paymentOrderUuid,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestRechargeOrderCancelPaymentMethod;

  factory RequestRechargeOrderCancelPaymentMethod.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RequestRechargeOrderCancelPaymentMethodFromJson(json);
}
