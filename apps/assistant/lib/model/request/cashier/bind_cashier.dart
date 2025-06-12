import 'package:freezed_annotation/freezed_annotation.dart';

part 'bind_cashier.freezed.dart';
part 'bind_cashier.g.dart';

@freezed
class RequestBindCashier with _$RequestBindCashier {
  const factory RequestBindCashier({
    @JsonKey(name: "cashier_uuid") required int cashierUuid,
    @JsonKey(name: "device_id") required String deviceId,
  }) = _RequestBindCashier;

  factory RequestBindCashier.fromJson(Map<String, dynamic> json) => _$RequestBindCashierFromJson(json);
}
