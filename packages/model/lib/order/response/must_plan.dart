import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/order/response/must_plan_product.dart';

part 'must_plan.freezed.dart';
part 'must_plan.g.dart';

@freezed
class OrderMustPlan with _$OrderMustPlan {
  const factory OrderMustPlan({
    @JsonKey(name: "can_change_num") required bool canChangeNum,
    @JsonKey(name: "must_rule") required int mustRule,
    @JsonKey(name: "must_type") required int mustType,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "need_num") required int needNum,
    @JsonKey(name: "products") required BaseList<MustPlanProductWrapper> products,
    @JsonKey(name: "selected_num") required int selectedNum,
  }) = _OrderMustPlan;

  factory OrderMustPlan.fromJson(Map<String, dynamic> json) => _$OrderMustPlanFromJson(json);
}
