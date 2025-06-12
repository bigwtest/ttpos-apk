import 'package:freezed_annotation/freezed_annotation.dart';

part 'cashier_info.freezed.dart';
part 'cashier_info.g.dart';

@freezed
class ResponseCashierInfo with _$ResponseCashierInfo {
  const factory ResponseCashierInfo({
    @JsonKey(name: "cashier_uuid") required int cashierUuid,
    @JsonKey(name: "device_id") required String deviceId,
    @JsonKey(name: "remark") required String remark,
    @JsonKey(name: "username") required String username,
  }) = _ResponseCashierInfo;

  factory ResponseCashierInfo.fromJson(Map<String, dynamic> json) => _$ResponseCashierInfoFromJson(json);
}
