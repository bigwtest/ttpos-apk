import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'cashier.dart';
import 'extra.dart';
import 'member.dart';
import 'operation_log.dart';
import 'resp_recharge_order_payment_method.dart';

part 'top_up_details.freezed.dart';
part 'top_up_details.g.dart';

@unfreezed
class TopUpDetails with _$TopUpDetails {
  factory TopUpDetails({
    @JsonKey(name: "amount") required SafetyNumber amount,
    @JsonKey(name: "cashier") required Cashier cashier,
    @JsonKey(name: "charge_due") required SafetyNumber chargeDue,
    @JsonKey(name: "create_time") required int createTime,
    @JsonKey(name: "extra") required Extra extra,
    @JsonKey(name: "gift_amount") required SafetyNumber giftAmount,
    @JsonKey(name: "gift_point") required SafetyNumber giftPoint,
    @JsonKey(name: "member") required Member member,
    @JsonKey(name: "operation_log") required OperationLog operationLog,
    @JsonKey(name: "order_no") required String orderNo,
    @JsonKey(name: "payment_methods")
    required List<RespRechargeOrderPaymentMethod> paymentMethods,
    @JsonKey(name: "payment_time") required int paymentTime,
    @JsonKey(name: "recharge_amount") required SafetyNumber rechargeAmount,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "uuid") required int uuid,
  }) = _TopUpDetails;

  factory TopUpDetails.fromJson(Map<String, dynamic> json) =>
      _$TopUpDetailsFromJson(json);
}
