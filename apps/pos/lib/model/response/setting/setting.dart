import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting.freezed.dart';
part 'setting.g.dart';

///

@freezed
class SettingResponse with _$SettingResponse {
  const factory SettingResponse({
    @JsonKey(name: "accept_order") AcceptOrder? acceptOrder,
    @JsonKey(name: "system") SystemSetting? system,
  }) = _SettingResponse;

  factory SettingResponse.fromJson(Map<String, dynamic> json) => _$SettingResponseFromJson(json);
}

///接单设置
//////resp.AcceptOrderSetting
@freezed
class AcceptOrder with _$AcceptOrder {
  const factory AcceptOrder({
    @JsonKey(name: "is_auto_order") String? isAutoOrder,
    @JsonKey(name: "auto_order_limit") String? autoOrderLimit,
    @JsonKey(name: "is_auto_voice") String? isAutoVoice,
  }) = _AcceptOrder;

  factory AcceptOrder.fromJson(Map<String, dynamic> json) => _$AcceptOrderFromJson(json);
}

@freezed
class SystemSetting with _$SystemSetting {
  const factory SystemSetting({
    @JsonKey(name: "is_show_scan_sold_out") int? isShowScanSoldOut,
    @JsonKey(name: "is_show_assistant_sold_out") int? isShowAssistantSoldOut,
    @JsonKey(name: "menu_show_sold_out") int? menuShowSoldOut,
    @JsonKey(name: "dish_card_style") String? dishCardStyle,
    @JsonKey(name: "is_show_sold_out") int? isShowSoldOut,
    // @JsonKey(name: "default_language") String? defaultLanguage,
    // @JsonKey(name: "second_language") String? secondLanguage,
    // @JsonKey(name: "device_id") String? deviceId,
    // @JsonKey(name: "device_remark") String? deviceRemark,
    // @JsonKey(name: "client_version") String? clientVersion,
    @JsonKey(name: "server_version") String? serverVersion,
  }) = _SystemSetting;

  factory SystemSetting.fromJson(Map<String, dynamic> json) => _$SystemSettingFromJson(json);
}
