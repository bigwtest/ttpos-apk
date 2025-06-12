import 'package:freezed_annotation/freezed_annotation.dart';

part 'print_config.freezed.dart';
part 'print_config.g.dart';

@freezed
class PrintConfig with _$PrintConfig {
  const factory PrintConfig({
    @JsonKey(name: "IP") String? ip,
    @JsonKey(name: "PORT") String? port,
    @JsonKey(name: "SN") String? sn,
    @JsonKey(name: "APP_ID") String? appId,
    @JsonKey(name: "APP_KEY") String? appKey,
  }) = _PrintConfig;

  factory PrintConfig.fromJson(Map<String, dynamic> json) => _$PrintConfigFromJson(json);
}
