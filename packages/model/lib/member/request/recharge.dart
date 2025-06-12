import 'package:freezed_annotation/freezed_annotation.dart';

part 'recharge.freezed.dart';
part 'recharge.g.dart';

///req.RechargeReq
@unfreezed
class RequestCreateRechargeOrder with _$RequestCreateRechargeOrder {
  factory RequestCreateRechargeOrder({
    @JsonKey(name: "gift_amount") required double giftAmount,
    @JsonKey(name: "gift_point") required double giftPoint,
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "recharge_amount") required double rechargeAmount,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestCreateRechargeOrder;

  factory RequestCreateRechargeOrder.fromJson(Map<String, dynamic> json) => _$RequestCreateRechargeOrderFromJson(json);
}

@unfreezed
class RequestConfirmRechargeOrder with _$RequestConfirmRechargeOrder {
  factory RequestConfirmRechargeOrder({
    @JsonKey(name: "member_uuid") required int memberUuid,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestConfirmRechargeOrder;

  factory RequestConfirmRechargeOrder.fromJson(Map<String, dynamic> json) =>
      _$RequestConfirmRechargeOrderFromJson(json);
}

@unfreezed
class RequestCreatePaymentOrder with _$RequestCreatePaymentOrder {
  factory RequestCreatePaymentOrder({
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
    @JsonKey(name: "payment_order_uuid") int? paymentOrderUuid,
  }) = _RequestCreatePaymentOrder;

  factory RequestCreatePaymentOrder.fromJson(Map<String, dynamic> json) => _$RequestCreatePaymentOrderFromJson(json);
}

@unfreezed
class RequestCancelPaymentOrder with _$RequestCancelPaymentOrder {
  factory RequestCancelPaymentOrder({
    @JsonKey(name: "payment_order_uuid") required int paymentOrderUuid,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestCancelPaymentOrder;

  factory RequestCancelPaymentOrder.fromJson(Map<String, dynamic> json) => _$RequestCancelPaymentOrderFromJson(json);
}

@unfreezed
class RequestPrintRechargeReceipt with _$RequestPrintRechargeReceipt {
  factory RequestPrintRechargeReceipt({
    @JsonKey(name: "print_lang") required String printLang,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestPrintRechargeReceipt;

  factory RequestPrintRechargeReceipt.fromJson(Map<String, dynamic> json) =>
      _$RequestPrintRechargeReceiptFromJson(json);
}
