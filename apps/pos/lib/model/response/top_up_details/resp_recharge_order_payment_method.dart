import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_recharge_order_payment_method.freezed.dart';
part 'resp_recharge_order_payment_method.g.dart';

@unfreezed
class RespRechargeOrderPaymentMethod with _$RespRechargeOrderPaymentMethod {
  factory RespRechargeOrderPaymentMethod({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "price") required double price,
  }) = _app;

  factory RespRechargeOrderPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$RespRechargeOrderPaymentMethodFromJson(json);
}
