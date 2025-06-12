import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_recharge_order.freezed.dart';
part 'confirm_recharge_order.g.dart';

///RequestConfirmRechargeOrder
@freezed
class RequestConfirmRechargeOrder with _$RequestConfirmRechargeOrder {
  const factory RequestConfirmRechargeOrder({
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestConfirmRechargeOrder;

  factory RequestConfirmRechargeOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestConfirmRechargeOrderFromJson(json);
}
