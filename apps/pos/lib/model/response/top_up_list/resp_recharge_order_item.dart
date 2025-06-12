import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'extra.dart';
part 'resp_recharge_order_item.freezed.dart';
part 'resp_recharge_order_item.g.dart';

@unfreezed
class RespRechargeOrderItem with _$RespRechargeOrderItem {
  factory RespRechargeOrderItem({
    @JsonKey(name: "amount") required SafetyNumber amount,
    @JsonKey(name: "extra") required Extra extra,
    @JsonKey(name: "order_no") required String orderNo,
    @JsonKey(name: "payment_methods") required List<String> paymentMethods,
    @JsonKey(name: "payment_time") required int paymentTime,
    @JsonKey(name: "recharge_amount") required SafetyNumber rechargeAmount,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "gift_amount") required SafetyNumber giftAmount,
    @JsonKey(name: "gift_point") required SafetyNumber giftPoint,
  }) = _RespRechargeOrderItem;

  factory RespRechargeOrderItem.fromJson(Map<String, dynamic> json) =>
      _$RespRechargeOrderItemFromJson(json);
}
