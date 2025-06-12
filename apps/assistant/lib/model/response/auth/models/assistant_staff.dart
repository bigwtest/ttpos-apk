import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistant_staff.freezed.dart';
part 'assistant_staff.g.dart';

///自助餐设置
///
///setting.AssistantStaff
@freezed
class AssistantStaff with _$AssistantStaff {
  const factory AssistantStaff({
    @JsonKey(name: "device_id") required String deviceId,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "real_name") required String realName,
    @JsonKey(name: "uuid") required int uuid,
  }) = _AssistantStaff;

  factory AssistantStaff.fromJson(Map<String, dynamic> json) => _$AssistantStaffFromJson(json);
}
