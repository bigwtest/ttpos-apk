import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/product.dart';

part 'sent_kitchen.freezed.dart';
part 'sent_kitchen.g.dart';

@freezed
class SentKitchen with _$SentKitchen {
  const factory SentKitchen({
    // 金额信息
    @JsonKey(name: "amount_info") SentKitchenAmountInfo? amountInfo,
    // 商品列表
    @JsonKey(name: "groups") required BaseList<SentKitchenItem> groups,
  }) = _SentKitchen;

  factory SentKitchen.fromJson(Map<String, dynamic> json) => _$SentKitchenFromJson(json);
}

@freezed
class SentKitchenAmountInfo with _$SentKitchenAmountInfo {
  const factory SentKitchenAmountInfo({
    // 总金额。商品未含税时，总金额=商品金额(折后)+服务费+税费。商品已含税时，总金额=商品金额（折后，含商品消费税）+服务费+税费（只有服务费税）
    @JsonKey(name: "amount") required SafetyNumber amount,
    // 优惠折扣金额(整单打折优惠金额+订单抹零金额)
    @JsonKey(name: "discount_amount") required SafetyNumber discountAmount,
    // 会员优惠折扣金额
    @JsonKey(name: "member_discount_amount") required SafetyNumber memberDiscountAmount,
    // 商品金额(折后价)
    @JsonKey(name: "product_amount") required SafetyNumber productAmount,
    // 总数量，用于点餐助手、平板端、h5
    @JsonKey(name: "product_num") required int productNum,
    // 商品金额(原价)
    @JsonKey(name: "product_origin_amount") required SafetyNumber productOriginAmount,
    // 服务费
    @JsonKey(name: "service_amount") required SafetyNumber serviceAmount,
    // 税费（商品税费+服务费税费）
    @JsonKey(name: "tax_amount") required SafetyNumber taxAmount,
  }) = _SentKitchenAmountInfo;

  factory SentKitchenAmountInfo.fromJson(Map<String, dynamic> json) => _$SentKitchenAmountInfoFromJson(json);
}

@freezed
class SentKitchenItem with _$SentKitchenItem {
  const factory SentKitchenItem({
    // 组商品列表
    @JsonKey(name: "products") required BaseList<Product> products,
    // 送厨时间. “17:20:01 下单”
    @JsonKey(name: "send_kitchen_time") required int sendKitchenTime,
    // 接单时间. “17:20:01 接单”。值为0时不显示
    @JsonKey(name: "accept_time") int? acceptTime,
    // 接单状态. false：拒单，true：接单
    @JsonKey(name: "is_accept") bool? isAccept,
    // h5下单时间
    @JsonKey(name: "h5_order_time") int? h5OrderTime,
    // h5订单是否需要审核，是则需要显示接单/拒单时间
    @JsonKey(name: "is_h5_order_need_audit") bool? isH5OrderNeedAudit,
  }) = _SentKitchenItem;

  factory SentKitchenItem.fromJson(Map<String, dynamic> json) => _$SentKitchenItemFromJson(json);
}
