import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/payment/payment_order.dart';

part 'recharge_order.freezed.dart';
part 'recharge_order.g.dart';

///resp.ResponseRechargeOrder
@freezed
class ResponseRechargeOrder with _$ResponseRechargeOrder {
  const factory ResponseRechargeOrder({
    @JsonKey(name: "charge_due") required double chargeDue,
    @JsonKey(name: "gift_amount") required double giftAmount,
    @JsonKey(name: "gift_point") required double giftPoint,
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "payment_orders") required List<ResponsePaymentOrder> paymentOrders,
    @JsonKey(name: "recharge_amount") required double rechargeAmount,
    @JsonKey(name: "uuid") required int uuid,
  }) = _ResponseRechargeOrder;

  factory ResponseRechargeOrder.fromJson(Map<String, dynamic> json) => _$ResponseRechargeOrderFromJson(json);
}
