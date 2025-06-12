import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/buffet.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';

part 'desk_ping.freezed.dart';
part 'desk_ping.g.dart';

@freezed
class ResponseDeskPing with _$ResponseDeskPing {
  const factory ResponseDeskPing({
    // 自助餐信息
    @JsonKey(name: "buffet") required ResponseBuffet buffet,
    // 桌台信息
    @JsonKey(name: "desk_info") required Desk deskInfo,
    // 必点方案列表
    @JsonKey(name: "must_plans") required BaseList<MustGoodsItem> mustPlans,
    // 销售订单列表
    @JsonKey(name: "sale_order_list") List<ResponseSaleOrder>? saleOrderList,
    // 已送厨商品信息
    @JsonKey(name: "sent_kitchen") required SentKitchen sentKitchen,
    // 已送厨商品列表，用于显示送厨数量和完成数量
    @JsonKey(name: "sent_kitchen_products") BaseList<SentKitchenProduct>? sentKitchenProducts,
    // 未送厨商品信息
    @JsonKey(name: "unsent_kitchen") required UnsentKitchen unsentKitchen,
    // 必选商品
    @JsonKey(name: "must_products") BaseList<GoodsBuffet>? mustProducts,

    /// NOTE: 更新时间
    @JsonKey(name: "update_time") @Default(0) int? updateTime,
  }) = _ResponseDeskPing;

  factory ResponseDeskPing.fromJson(Map<String, dynamic> json) => _$ResponseDeskPingFromJson(json);
}

@freezed
class SentKitchenProduct with _$SentKitchenProduct {
  const factory SentKitchenProduct({
    // 制作完成数量
    @JsonKey(name: "finished_num") required int finishedNum,
    // 商品Uuid
    @JsonKey(name: "product_package_uuid") required int productPackageUuid,
    // 已送厨商品数量
    @JsonKey(name: "sent_kitchen_product_num") required int sentKitchenProductNum,
  }) = _SentKitchenProduct;

  factory SentKitchenProduct.fromJson(Map<String, dynamic> json) => _$SentKitchenProductFromJson(json);
}

@freezed
class ResponseBuffet with _$ResponseBuffet {
  const factory ResponseBuffet({
    // 自助餐名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 剩余用餐，单位秒，如果为-1，表示不限时
    @JsonKey(name: "remaining_seconds") required int remainingSeconds,
    // 剩余点餐，单位秒
    @JsonKey(name: "remaining_ordering_time") required int remainingOrderingTime,
    // 自助餐结束前x分钟时提醒即将不可下单，用于助手端、平板端和h5，单位秒
    @JsonKey(name: "reminder_order_time") required int reminderOrderTime,
    // 助手、平板、h5时间是否已设置
    @JsonKey(name: "is_tablet_h5_time_set") required bool isTabletH5TimeSet,
  }) = _ResponseBuffet;

  factory ResponseBuffet.fromJson(Map<String, dynamic> json) => _$ResponseBuffetFromJson(json);
}

@freezed
class ResponseSaleOrder with _$ResponseSaleOrder {
  const factory ResponseSaleOrder({
    // 订单改价折扣率
    @JsonKey(name: "custom_discount_rate") required double customDiscountRate,
    // 是否存在折扣 true:存在 false:不存在
    @JsonKey(name: "is_discount") required bool isDiscount,
    // 订单号
    @JsonKey(name: "order_no") required String orderNo,
    // 商品列表
    @JsonKey(name: "product_list") required List<Product> productList,
    // 商品数量
    @JsonKey(name: "product_num") required int productNum,
    // 订单状态, 0-未结账 1-已结账
    @JsonKey(name: "status") required int status,
    // uuid
    @JsonKey(name: "uuid") required int uuid,
    // 订单抹零规则
    @JsonKey(name: "zero_rule") required int zeroRule,
    // 金额信息
    @JsonKey(name: "amount_info") SentKitchenAmountInfo? amountInfo,
    // 优惠弹窗-自动抹零提示
    @JsonKey(name: "auto_discount_message") String? autoDiscountMessage,
  }) = _ResponseSaleOrder;

  factory ResponseSaleOrder.fromJson(Map<String, dynamic> json) => _$ResponseSaleOrderFromJson(json);
}
