import 'package:freezed_annotation/freezed_annotation.dart';

part 'cashier.freezed.dart';
part 'cashier.g.dart';

@unfreezed
class Cashier with _$Cashier {
  factory Cashier({
    @JsonKey(name: "real_name") required String realName,
  }) = _Cashier;

  factory Cashier.fromJson(Map<String, dynamic> json) =>
      _$CashierFromJson(json);
}
