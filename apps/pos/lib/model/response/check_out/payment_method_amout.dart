import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_amout.freezed.dart';
part 'payment_method_amout.g.dart';

//
@freezed
class PaymentMethodAmount with _$PaymentMethodAmount {
  const factory PaymentMethodAmount({
    @JsonKey(name: "commission_fee") required double commissionFee,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "sale_order_amount") required double saleOrderAmount,
    @JsonKey(name: "sale_order_origin_amount") required double saleOrderOriginAmount,
    @JsonKey(name: "unpaid_amount") required double unpaidAmount,
    @JsonKey(name: "zero_amount") required double zeroAmount,
    @JsonKey(name: "zero_rule") required int zeroRule,
  }) = _PaymentMethodAmount;

  factory PaymentMethodAmount.fromJson(Map<String, dynamic> json) => _$PaymentMethodAmountFromJson(json);
}
