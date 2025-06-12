import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'tablet.freezed.dart';
part 'tablet.g.dart';

@freezed
class Tablet with _$Tablet {
  const factory Tablet({
    @JsonKey(name: "carousel") required List<Carousel> carousel,
    @JsonKey(name: "default_language") required String defaultLanguage,
    @JsonKey(name: "is_buffet_order_limit") required SafetyNumber isBuffetOrderLimit,
    @JsonKey(name: "is_call_service") required SafetyNumber isCallService,
    @JsonKey(name: "is_customer_order") required SafetyNumber isCustomerOrder,
    @JsonKey(name: "is_order_limit") required SafetyNumber isOrderLimit,
    @JsonKey(name: "is_show_sold_out") required SafetyNumber isShowSoldOut,
    @JsonKey(name: "is_voice_remind") required SafetyNumber isVoiceRemind,
    @JsonKey(name: "language") required List<String> language,
    @JsonKey(name: "language_list") required List<LanguageItem> languageList,
    @JsonKey(name: "order_limit") OrderLimit? orderLimit,
    @JsonKey(name: "buffet_order_limit") OrderLimit? buffetOrderLimit,
    @JsonKey(name: "server") required Server server,
  }) = _Tablet;

  factory Tablet.fromJson(Map<String, dynamic> json) => _$TabletFromJson(json);
}

@freezed
class Server with _$Server {
  const factory Server({
    @JsonKey(name: "ip") required String ip,
    @JsonKey(name: "port") required String port,
  }) = _Server;

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}

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

@freezed
class Carousel with _$Carousel {
  const factory Carousel({
    @JsonKey(name: "file_path") required String filePath,
    @JsonKey(name: "real_name") required String realName,
    @JsonKey(name: "sort") required String sort,
    @JsonKey(name: "type") required String type,
  }) = _Carousel;

  factory Carousel.fromJson(Map<String, dynamic> json) => _$CarouselFromJson(json);
}
