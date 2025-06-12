import 'package:freezed_annotation/freezed_annotation.dart';
import 'resp_payment_order.dart';
part 'resp_recharge_order.freezed.dart';
part 'resp_recharge_order.g.dart';

@unfreezed
class RespRechargeOrder with _$RespRechargeOrder {
  factory RespRechargeOrder({
    @JsonKey(name: "charge_due") required double chargeDue,
    @JsonKey(name: "gift_amount") required double giftAmount,
    @JsonKey(name: "gift_point") required double giftPoint,
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "payment_orders")
    required List<RespPaymentOrder> paymentOrders,
    @JsonKey(name: "recharge_amount") required double rechargeAmount,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RespRechargeOrder;

  factory RespRechargeOrder.fromJson(Map<String, dynamic> json) =>
      _$RespRechargeOrderFromJson(json);
}
