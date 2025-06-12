import 'package:freezed_annotation/freezed_annotation.dart';

part 'cashier_staff.freezed.dart';
part 'cashier_staff.g.dart';

///自助餐设置
///
///setting.CashierStaff
@freezed
class CashierStaff with _$CashierStaff {
  const factory CashierStaff({
    @JsonKey(name: "device_id") required String deviceId,
    @JsonKey(name: "device_remark") required String deviceRemark,
    @JsonKey(name: "real_name") required String realName,
    @JsonKey(name: "username") required String username,
  }) = _CashierStaff;

  factory CashierStaff.fromJson(Map<String, dynamic> json) => _$CashierStaffFromJson(json);
}
