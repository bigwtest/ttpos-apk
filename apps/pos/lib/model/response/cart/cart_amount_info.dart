// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'cart_amount_info.freezed.dart';
part 'cart_amount_info.g.dart';

@freezed
class ResponseCartAmountInfo with _$ResponseCartAmountInfo {
  factory ResponseCartAmountInfo({
    // 商品原价总额
    @JsonKey(name: 'product_origin_amount') required SafetyNumber productOriginAmount,
    // 商品实际总额
    @JsonKey(name: 'product_amount') required SafetyNumber productAmount,
    // 服务费
    @JsonKey(name: 'service_amount') required SafetyNumber serviceAmount,
    // 税费
    @JsonKey(name: 'tax_amount') required SafetyNumber taxAmount,
    // 折扣金额
    @JsonKey(name: 'discount_amount') required SafetyNumber discountAmount,
    // 会员折扣金额
    @JsonKey(name: 'member_discount_amount') required SafetyNumber memberDiscountAmount,
    // 实付金额
    @JsonKey(name: 'amount') required SafetyNumber amount,
  }) = _ResponseCartAmountInfo;

  factory ResponseCartAmountInfo.fromJson(Map<String, dynamic> json) => _$ResponseCartAmountInfoFromJson(json);
}
