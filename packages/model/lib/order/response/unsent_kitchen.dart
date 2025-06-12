import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/product.dart';

part 'unsent_kitchen.freezed.dart';
part 'unsent_kitchen.g.dart';

@freezed
class UnsentKitchen with _$UnsentKitchen {
  const factory UnsentKitchen({
    // 金额信息
    @JsonKey(name: "amount_info") required UnsentKitchenAmountInfo amountInfo,
    // 商品列表
    @JsonKey(name: "products") required BaseList<Product> products,
  }) = _UnsentKitchen;

  factory UnsentKitchen.fromJson(Map<String, dynamic> json) => _$UnsentKitchenFromJson(json);
}

@freezed
class UnsentKitchenAmountInfo with _$UnsentKitchenAmountInfo {
  const factory UnsentKitchenAmountInfo({
    // 商品金额(折后价)
    @JsonKey(name: "product_amount") required SafetyNumber productAmount,
    // 总数量，用于点餐助手、h5
    @JsonKey(name: "product_num") required int productNum,
  }) = _UnsentKitchenAmountInfo;

  factory UnsentKitchenAmountInfo.fromJson(Map<String, dynamic> json) => _$UnsentKitchenAmountInfoFromJson(json);
}
