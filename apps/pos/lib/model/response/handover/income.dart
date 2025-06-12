import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'income.freezed.dart';
part 'income.g.dart';

@freezed
class Income with _$Income {
  const factory Income({
    @JsonKey(name: "pay_type_name") String? payTypeName,
    @SafetyNumberConverter() SafetyNumber? price,
  }) = _Income;

  factory Income.fromJson(Map<String, dynamic> json) => _$IncomeFromJson(json);
}
