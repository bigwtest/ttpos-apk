import 'package:freezed_annotation/freezed_annotation.dart';

part 'zero_rule.freezed.dart';
part 'zero_rule.g.dart';

@unfreezed
class RequestZeroRule with _$RequestZeroRule {
  factory RequestZeroRule({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "zero_rule") required int zeroRule,
  }) = _RequestZeroRule;

  factory RequestZeroRule.fromJson(Map<String, dynamic> json) => _$RequestZeroRuleFromJson(json);
}
