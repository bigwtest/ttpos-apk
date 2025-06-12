import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

///货币单位
///
///setting.Currency
@freezed
class Currency with _$Currency {
  const factory Currency({
    @JsonKey(name: "is_open") required String isOpen,
    @JsonKey(name: "print_unit") required String printUnit,
    @JsonKey(name: "unit") required String unit,
    @JsonKey(name: "unit_position") required String unitPosition,
    @JsonKey(name: "unit_rate") required String unitRate,
    @JsonKey(name: "vice_unit") required String viceUnit,
    @JsonKey(name: "vice_unit_position") required String viceUnitPosition,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

  static Currency empty() => Currency(
        isOpen: '0',
        printUnit: '@',
        unit: '@',
        unitPosition: '0',
        unitRate: '1',
        viceUnit: '@',
        viceUnitPosition: '0',
      );
}
