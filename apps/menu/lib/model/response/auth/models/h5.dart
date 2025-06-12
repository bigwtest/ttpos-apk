import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'h5.freezed.dart';
part 'h5.g.dart';

@freezed
class H5 with _$H5 {
  const factory H5({
    @JsonKey(name: "default_language") required String defaultLanguage,
    @JsonKey(name: "is_buffet_order_limit") required SafetyNumber isBuffetOrderLimit,
    @JsonKey(name: "is_call_service") required SafetyNumber isCallService,
    @JsonKey(name: "is_customer_order") required SafetyNumber isCustomerOrder,
    @JsonKey(name: "is_order_limit") required SafetyNumber isOrderLimit,
    @JsonKey(name: "is_show_scan_sold_out") required SafetyNumber isShowSoldOut,
    @JsonKey(name: "is_voice_remind") required SafetyNumber isVoiceRemind,
    @JsonKey(name: "language") required List<String> language,
    @JsonKey(name: "language_list") required List<LanguageItem> languageList,
    @JsonKey(name: "order_limit") OrderLimit? orderLimit,
    @JsonKey(name: "buffet_order_limit") OrderLimit? buffetOrderLimit,
    // @JsonKey(name: "server") required Server server,
  }) = _H5;

  factory H5.fromJson(Map<String, dynamic> json) => _$H5FromJson(json);
}

// @freezed
// class Server with _$Server {
//   const factory Server({
//     @JsonKey(name: "ip") required String ip,
//     @JsonKey(name: "port") required String port,
//   }) = _Server;

//   factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
// }

@freezed
class OrderLimit with _$OrderLimit {
  const factory OrderLimit({
    @JsonKey(name: "is_limit_num") required String isLimitNum,
    @JsonKey(name: "is_limit_time") required String isLimitTime,
    @JsonKey(name: "limit_num") required String limitNum,
    @JsonKey(name: "limit_time") required String limitTime,
  }) = _OrderLimit;

  factory OrderLimit.fromJson(Map<String, dynamic> json) => _$OrderLimitFromJson(json);
}
