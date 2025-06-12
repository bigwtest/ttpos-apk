import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount.freezed.dart';
part 'discount.g.dart';

@freezed
class RequestDiscountDesk with _$RequestDiscountDesk {
  factory RequestDiscountDesk({
    // 折扣方式
    @JsonKey(name: "discount_method") required int discountMethod,
    // 销售账单ID
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    // 销售订单ID
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    // 金额
    @JsonKey(name: "price") required double price,
    // 抹零规则
    @JsonKey(name: "zero_rule") required int zeroRule,
    // 打折类型 0=百分比折扣，如八折为80% 1=百分比减免Off，如八折为20% off
    @JsonKey(name: "discount_type") required int discountType,
    // 打折。0-100之间
    @JsonKey(name: "discount") required double discount,
  }) = _RequestDiscountDesk;

  factory RequestDiscountDesk.fromJson(Map<String, dynamic> json) => _$RequestDiscountDeskFromJson(json);
}
