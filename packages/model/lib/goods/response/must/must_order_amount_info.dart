import 'package:freezed_annotation/freezed_annotation.dart';

part 'must_order_amount_info.freezed.dart';
part 'must_order_amount_info.g.dart';

// 商品规格
@freezed
class GoodsMustOrderAmountInfo with _$GoodsMustOrderAmountInfo {
  factory GoodsMustOrderAmountInfo({
    // 总金额。商品未含税时，总金额=商品金额(折后)+服务费+税费。商品已含税时，总金额=商品金额（折后，含商品消费税）+服务费+税费（只有服务费税）
    @JsonKey(name: "amount") required double amount,
    // 优惠折扣金额(整单打折优惠金额+订单抹零金额)
    @JsonKey(name: "discount_amount") required double discountAmount,
    // 会员优惠折扣金额
    @JsonKey(name: "member_discount_amount") required double memberDiscountAmount,
    // 商品金额(折后价)
    @JsonKey(name: "product_amount") required double productAmount,
    // 商品金额(原价)
    @JsonKey(name: "product_origin_amount") required double productOriginAmount,
    // 服务费
    @JsonKey(name: "service_amount") required double serviceAmount,
    // 税费（商品税费+服务费税费）
    @JsonKey(name: "tax_amount") required double taxAmount,
  }) = _GoodsMustOrderAmountInfo;

  factory GoodsMustOrderAmountInfo.fromJson(Map<String, dynamic> json) => _$GoodsMustOrderAmountInfoFromJson(json);
}
