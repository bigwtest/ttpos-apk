import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/order_list/meta.dart';
import 'package:pos/model/response/order_list/resp_bill_lists.dart';

part 'response_order_for_meals.freezed.dart';
part 'response_order_for_meals.g.dart';

///app zh:用餐订单列表
@freezed
class ResponseOrderForMeals with _$ResponseOrderForMeals {
  factory ResponseOrderForMeals({
    @JsonKey(name: "list") required List<RespBillLists> list,
    @JsonKey(name: "meta") required Meta meta,
  }) = _ResponseOrderForMeals;

  factory ResponseOrderForMeals.fromJson(Map<String, dynamic> json) =>
      _$ResponseOrderForMealsFromJson(json);
}
