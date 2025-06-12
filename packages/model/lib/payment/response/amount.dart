import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'amount.freezed.dart';
part 'amount.g.dart';

@freezed
class PaymentAmount with _$PaymentAmount {
  const factory PaymentAmount({
    @JsonKey(name: "commission_fee") required SafetyNumber commissionFee,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "sale_order_amount") required SafetyNumber saleOrderAmount,
    @JsonKey(name: "sale_order_origin_amount") required SafetyNumber saleOrderOriginAmount,
    @JsonKey(name: "unpaid_amount") required SafetyNumber unpaidAmount,
    @JsonKey(name: "zero_amount") required SafetyNumber zeroAmount,
    @JsonKey(name: "zero_rule") required int zeroRule,

    /// NOTE: 2.1 新增字段
    @JsonKey(name: "is_auto_zero") bool? isAutoZero,
  }) = _PaymentAmount;

  factory PaymentAmount.fromJson(Map<String, dynamic> json) => _$PaymentAmountFromJson(json);
}
