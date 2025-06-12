import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_recharge_order.freezed.dart';
part 'create_recharge_order.g.dart';

///req.RechargeReq
@freezed
class RequestCreateRechargeOrder with _$RequestCreateRechargeOrder {
  const factory RequestCreateRechargeOrder({
    @JsonKey(name: "gift_amount") required double giftAmount,
    @JsonKey(name: "gift_point") required double giftPoint,
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "recharge_amount") required double rechargeAmount,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestCreateRechargeOrder;

  factory RequestCreateRechargeOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestCreateRechargeOrderFromJson(json);
}
