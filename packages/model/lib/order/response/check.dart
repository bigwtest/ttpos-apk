import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/order/response/must_plan.dart';
import 'package:ttpos_model/order/response/product.dart';

part 'check.freezed.dart';
part 'check.g.dart';

@freezed
class OrderCheck with _$OrderCheck {
  const factory OrderCheck({
    @JsonKey(name: "product_must_plans") BaseList<OrderMustPlan>? productMustPlans,
    @JsonKey(name: "products") BaseList<Product>? products,
  }) = _OrderCheck;

  factory OrderCheck.fromJson(Map<String, dynamic> json) => _$OrderCheckFromJson(json);
}
