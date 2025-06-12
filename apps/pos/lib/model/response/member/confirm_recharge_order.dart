// To parse this JSON data, do
//
//     final responseConfirmRechargeOrder = responseConfirmRechargeOrderFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_recharge_order.freezed.dart';
part 'confirm_recharge_order.g.dart';

///dto.Response

///resp.ConfirmRechargeOrder
@freezed
class ResponseConfirmRechargeOrder with _$ResponseConfirmRechargeOrder {
  const factory ResponseConfirmRechargeOrder({
    @JsonKey(name: "actual_amount") required double actualAmount,
    @JsonKey(name: "amount") required double amount,
    @JsonKey(name: "charge_due") required double chargeDue,
    @JsonKey(name: "payment_methods") required List<String> paymentMethods,
  }) = _ResponseConfirmRechargeOrder;

  factory ResponseConfirmRechargeOrder.fromJson(Map<String, dynamic> json) =>
      _$ResponseConfirmRechargeOrderFromJson(json);
}
