import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'cashier.freezed.dart';
part 'cashier.g.dart';

///收银机设置
///
///setting.Cashier
@freezed
class Cashier with _$Cashier {
  const factory Cashier({
    @JsonKey(name: "auto_lock_screen") required String autoLockScreen,
    @JsonKey(name: "auto_order_limit") required String autoOrderLimit,
    @JsonKey(name: "carousel") required List<SettingCarouselItem> carousel,
    @JsonKey(name: "default_language") required String defaultLanguage,
    @JsonKey(name: "is_auto_lock_screen") required String isAutoLockScreen,
    @JsonKey(name: "is_auto_order") required String isAutoOrder,
    @JsonKey(name: "is_auto_send") required String isAutoSend,
    @JsonKey(name: "is_auto_voice") required String isAutoVoice,
    @JsonKey(name: "is_open_cashier_password") required String isOpenCashierPassword,
    @JsonKey(name: "is_remain_color") required String isRemainColor,
    @JsonKey(name: "is_show_assistant_sold_out") required int isShowAssistantSoldOut,
    @JsonKey(name: "is_show_scan_sold_out") required int isShowScanSoldOut,
    @JsonKey(name: "language") required List<String> language,
    @JsonKey(name: "language_list") required List<LanguageItem> languageList,
    @JsonKey(name: "menu_show_sold_out") required String menuShowSoldOut,
    @JsonKey(name: "order_method") required OrderMethod orderMethod,
    @JsonKey(name: "remain_color") required List<String> remainColor,
    @JsonKey(name: "server") required Server server,
  }) = _Cashier;

  factory Cashier.fromJson(Map<String, dynamic> json) => _$CashierFromJson(json);
}

///setting.CarouselItem
@freezed
class SettingCarouselItem with _$SettingCarouselItem {
  const factory SettingCarouselItem({
    @JsonKey(name: "file_path") required String filePath,
    @JsonKey(name: "real_name") required String realName,
    @JsonKey(name: "sort") required String sort,
    @JsonKey(name: "type") required String type,
  }) = _SettingCarouselItem;

  factory SettingCarouselItem.fromJson(Map<String, dynamic> json) => _$SettingCarouselItemFromJson(json);
}

///用餐方式 收银-is_cashier_order（0-关闭 1-开启） 桌台-is_table_order（0-关闭 1-开启）
///
///setting.OrderMethodItem
@freezed
class OrderMethod with _$OrderMethod {
  const factory OrderMethod({
    @JsonKey(name: "is_cashier_order") required SafetyNumber isCashierOrder,
    @JsonKey(name: "is_table_order") required SafetyNumber isTableOrder,
  }) = _OrderMethod;

  factory OrderMethod.fromJson(Map<String, dynamic> json) => _$OrderMethodFromJson(json);
}

///收银机服务器连接
///
///setting.Server
@freezed
class Server with _$Server {
  const factory Server({
    @JsonKey(name: "ip") required String ip,
    @JsonKey(name: "port") required String port,
  }) = _Server;

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}
