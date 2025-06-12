import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'kitchen.freezed.dart';
part 'kitchen.g.dart';

@freezed
class Kitchen with _$Kitchen {
  const factory Kitchen({
    @JsonKey(name: "default_language") required String defaultLanguage,
    @JsonKey(name: "is_open") required SafetyNumber isOpen,
    @JsonKey(name: "is_call_service") required SafetyNumber isCallService,
    @JsonKey(name: "is_come_dish") required SafetyNumber isComeDish,
    @JsonKey(name: "is_wait_color") required SafetyNumber isWaitColor,
    @JsonKey(name: "wait_color") required List<String> waitColor,
    @JsonKey(name: "language") required List<String> language,
    @JsonKey(name: "language_list") required List<LanguageItem> languageList,
    @JsonKey(name: "server") required Server server,
  }) = _Kitchen;

  factory Kitchen.fromJson(Map<String, dynamic> json) => _$KitchenFromJson(json);
}

@freezed
class Server with _$Server {
  const factory Server({
    @JsonKey(name: "ip") required String ip,
    @JsonKey(name: "port") required String port,
  }) = _Server;

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}
