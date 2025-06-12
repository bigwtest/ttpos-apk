// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/cart/cart_buffet.dart';
import 'package:pos/model/response/cart/cart_desk.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';

import 'cart_sale_order.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class ResponseCart with _$ResponseCart {
  factory ResponseCart({
    // 销售单据Uuid
    @JsonKey(name: 'sale_bill_uuid') int? saleBillUuid,
    // 是否桌台订单
    @JsonKey(name: 'is_desk_order') required bool isDeskOrder,
    // 是否锁定
    @JsonKey(name: 'is_lock') @Default(false) bool? isLock,
    // 用餐方式 0:堂食 1:打包
    @JsonKey(name: 'dining_method') required int diningMethod,
    // 订单列表
    @JsonKey(name: 'sale_order_list') required List<ResponseCartSaleOrder> saleOrderList,
    // 自助餐信息
    @JsonKey(name: 'buffet') ResponseCartBuffet? buffet,
    // 桌台信息
    @JsonKey(name: 'desk') ResponseCartDesk? desk,
    // 必点商品列表
    @JsonKey(name: 'must_plans') BaseList<MustGoodsItem>? mustPlans,
    // 是否打包
    @JsonKey(name: 'takeout') @Default(false) bool? takeout,

    /// NOTE: 更新时间
    @JsonKey(name: 'update_time') @Default(0) int? updateTime,
  }) = _ResponseCart;

  factory ResponseCart.fromJson(Map<String, dynamic> json) => _$ResponseCartFromJson(json);
}
