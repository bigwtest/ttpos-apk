import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_for_meals.freezed.dart';
part 'request_order_for_meals.g.dart';

///RequestOrderForMeals 登录表单
@unfreezed
class RequestOrderForMeals with _$RequestOrderForMeals {
  factory RequestOrderForMeals({
    @JsonKey(name: "bill_type") required int billType,
    @JsonKey(name: "date_type") required int dateType,
    @JsonKey(name: "dining_method") required int diningMethod,
    @JsonKey(name: "enable_create_time") required bool enableCreateTime,
    @JsonKey(name: "enable_pay_time") required bool enablePayTime,
    @JsonKey(name: "order_no") required String orderNo,
    @JsonKey(name: "page_no") required int pageNo,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "query_end_time") required int queryEndTime,
    @JsonKey(name: "query_start_time") required int queryStartTime,
    @JsonKey(name: "status") required int status,
  }) = _RequestOrderForMeals;

  factory RequestOrderForMeals.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderForMealsFromJson(json);
}
