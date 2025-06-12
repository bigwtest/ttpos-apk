import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Buffet with _$Buffet {
  const factory Buffet({
    @JsonKey(name: "buffet_customer_type") required BaseList<BuffetCustomerType> buffetCustomerType,
    @JsonKey(name: "can_combined") required bool canCombined,
    @JsonKey(name: "is_limit_time") required bool isLimitTime,
    @JsonKey(name: "locale_name") required LocaleName localeName,
    @JsonKey(name: "non_ordering_time") required int nonOrderingTime,
    @JsonKey(name: "price") required SafetyNumber price,
    @JsonKey(name: "reminder_order_time") required int reminderOrderTime,
    @JsonKey(name: "uuid") required int uuid,
  }) = _Buffet;

  factory Buffet.fromJson(Map<String, dynamic> json) => _$BuffetFromJson(json);
}

@unfreezed
class BuffetCustomerType with _$BuffetCustomerType {
  factory BuffetCustomerType({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required int uuid,
  }) = _BuffetCustomerType;

  factory BuffetCustomerType.fromJson(Map<String, dynamic> json) => _$BuffetCustomerTypeFromJson(json);
}
