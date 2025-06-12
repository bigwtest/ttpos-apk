import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/payment/response/order.dart';

part 'recharge.freezed.dart';
part 'recharge.g.dart';

@freezed
class RechargeOrder with _$RechargeOrder {
  const factory RechargeOrder({
    @JsonKey(name: "charge_due") required SafetyNumber chargeDue,
    @JsonKey(name: "gift_amount") required SafetyNumber giftAmount,
    @JsonKey(name: "gift_point") required SafetyNumber giftPoint,
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "payment_orders") required BaseList<PaymentOrder> paymentOrders,
    @JsonKey(name: "recharge_amount") required SafetyNumber rechargeAmount,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RechargeOrder;

  factory RechargeOrder.fromJson(Map<String, dynamic> json) => _$RechargeOrderFromJson(json);
}

@freezed
class ConfirmRechargeOrder with _$ConfirmRechargeOrder {
  const factory ConfirmRechargeOrder({
    @JsonKey(name: "actual_amount") required SafetyNumber actualAmount,
    @JsonKey(name: "amount") required SafetyNumber amount,
    @JsonKey(name: "charge_due") required SafetyNumber chargeDue,
    @JsonKey(name: "payment_methods") required List<String> paymentMethods,
  }) = _ConfirmRechargeOrder;

  factory ConfirmRechargeOrder.fromJson(Map<String, dynamic> json) => _$ConfirmRechargeOrderFromJson(json);
}
