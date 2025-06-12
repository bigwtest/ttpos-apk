import 'package:freezed_annotation/freezed_annotation.dart';

part 'qrcode.freezed.dart';
part 'qrcode.g.dart';

@unfreezed
class RequestPaymentQrcode with _$RequestPaymentQrcode {
  factory RequestPaymentQrcode({
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestPaymentQrcode;

  factory RequestPaymentQrcode.fromJson(Map<String, dynamic> json) => _$RequestPaymentQrcodeFromJson(json);
}

@unfreezed
class RequestPaymentQrcodeForRecharge with _$RequestPaymentQrcodeForRecharge {
  factory RequestPaymentQrcodeForRecharge({
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
  }) = _RequestPaymentQrcodeForRecharge;

  factory RequestPaymentQrcodeForRecharge.fromJson(Map<String, dynamic> json) =>
      _$RequestPaymentQrcodeForRechargeFromJson(json);
}
