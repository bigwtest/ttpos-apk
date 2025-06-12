import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'assistant.freezed.dart';
part 'assistant.g.dart';

///收银机设置
///
///setting.Cashier
@freezed
class Assistant with _$Assistant {
  const factory Assistant({
    @JsonKey(name: "auto_lock_screen") required SafetyNumber autoLockScreen,
    @JsonKey(name: "default_mode") required String defaultMode,
    @JsonKey(name: "default_language") required String defaultLanguage,
    @JsonKey(name: "is_auto_lock_screen") required SafetyNumber isAutoLockScreen,
    @JsonKey(name: "is_auto_send") required SafetyNumber isAutoSend,
    @JsonKey(name: "is_remain_color") required SafetyNumber isRemainColor,
    @JsonKey(name: "is_show_assistant_sold_out") required SafetyNumber isShowAssistantSoldOut,
    @JsonKey(name: "language") required List<String> language,
    @JsonKey(name: "language_list") required List<LanguageItem> languageList,
    @JsonKey(name: "remain_color") required List<String> remainColor,
    @JsonKey(name: "server") required Server server,
    @JsonKey(name: "is_check_order") SafetyNumber? isCheckOrder, // 订单是否弹出弹窗密码
  }) = _Assistant;

  factory Assistant.fromJson(Map<String, dynamic> json) => _$AssistantFromJson(json);
}

@freezed
class Server with _$Server {
  const factory Server({
    @JsonKey(name: "ip") required String ip,
    @JsonKey(name: "port") required String port,
  }) = _Server;

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}
