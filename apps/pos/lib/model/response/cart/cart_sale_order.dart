// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/cart/cart_amount_info.dart';
import 'package:pos/model/response/cart/cart_product.dart';

part 'cart_sale_order.freezed.dart';
part 'cart_sale_order.g.dart';

@freezed
class ResponseCartSaleOrder with _$ResponseCartSaleOrder {
  factory ResponseCartSaleOrder({
    // 订单ID
    @JsonKey(name: 'uuid') required int uuid,
    // 订单号
    @JsonKey(name: 'order_no') required String orderNo,
    // 订单状态
    @JsonKey(name: 'status') required int status,
    // 是否有折扣
    @JsonKey(name: 'is_discount') required bool isDiscount,
    // 是否有会员折扣
    @JsonKey(name: 'is_member_discount') bool? isMemberDiscount,
    // 订单改价折扣率
    @JsonKey(name: 'custom_discount_rate') required double customDiscountRate,
    // 订单抹零规则
    @JsonKey(name: 'zero_rule') required int zeroRule,
    // 商品列表
    @JsonKey(name: 'product_list') required List<ResponseCartProduct> productList,
    // 金额信息
    @JsonKey(name: 'amount_info') required ResponseCartAmountInfo amountInfo,
    // 商品数量
    @JsonKey(name: 'product_num') required int productNum,
    // 优惠弹窗-自动抹零提示
    @JsonKey(name: "auto_discount_message") String? autoDiscountMessage,
  }) = _ResponseCartSaleOrder;

  factory ResponseCartSaleOrder.fromJson(Map<String, dynamic> json) => _$ResponseCartSaleOrderFromJson(json);
}
