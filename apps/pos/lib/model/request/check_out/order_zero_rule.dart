import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_zero_rule.freezed.dart';
part 'order_zero_rule.g.dart';

///req.OrderZeroRuleReq
@freezed
class RequestOrderZeroRule with _$RequestOrderZeroRule {
  const factory RequestOrderZeroRule({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "zero_rule") required int zeroRule,
  }) = _RequestOrderZeroRule;

  factory RequestOrderZeroRule.fromJson(Map<String, dynamic> json) => _$RequestOrderZeroRuleFromJson(json);
}
