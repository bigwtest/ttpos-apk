import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payment_zero_rule.freezed.dart';
part 'order_payment_zero_rule.g.dart';

///req.InstantOrderPaymentZeroRuleReq
@freezed
class RequestOrderPaymentZeroRule with _$RequestOrderPaymentZeroRule {
  const factory RequestOrderPaymentZeroRule({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "zero_rule") required int zeroRule,
  }) = _RequestOrderPaymentZeroRule;

  factory RequestOrderPaymentZeroRule.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderPaymentZeroRuleFromJson(json);
}
