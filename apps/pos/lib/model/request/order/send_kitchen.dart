import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_kitchen.freezed.dart';
part 'send_kitchen.g.dart';

///RequesSendKitchen 送厨房
@unfreezed
class RequestOrderSendKitchen with _$RequestOrderSendKitchen {
  @Assert('(tableId == 0) != (orderId == 0)', '必须设置 tableId 或 orderId 其中之一')
  factory RequestOrderSendKitchen({
    // 消费方式：10-外卖配送 20-上门取 30-打包带走 40-店内就餐
    @JsonKey(name: 'delivery') required int delivery,

    // 订单id - 点餐订单送厨时传 , 不然不需要理会
    @JsonKey(name: 'order_id') @Default(0) int? orderId,
    
    // 桌台id - 桌台订单送厨时传 , 不然不需要理会
    @JsonKey(name: 'table_id') @Default(0) int? tableId,

    // 子订单id - 点餐订单送厨时传 , 不然不需要理会
    @JsonKey(name: 'sub_order_id') int? subOrderId,

    // 忽略必点商品 0-否 1-是
    @JsonKey(name: 'ignore_must') @Default(0) int ignoreMust,

  }) = _RequestOrderSendKitchen;

  factory RequestOrderSendKitchen.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderSendKitchenFromJson(json);

}
