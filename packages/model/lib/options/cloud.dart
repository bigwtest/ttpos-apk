import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud.freezed.dart';
part 'cloud.g.dart';

@freezed
class Cloud with _$Cloud {
  const factory Cloud({
    @JsonKey(name: "brand_logo") String? brandLogo,
    @JsonKey(name: "brand_logo_long") String? brandLogoLong,
    @JsonKey(name: "brand_name") String? brandName,
    @JsonKey(name: "browser_logo") String? browserLogo,
    @JsonKey(name: "browser_title") String? browserTitle,
    @JsonKey(name: "expiration_reminder") int? expirationReminder,
  }) = _Cloud;

  factory Cloud.fromJson(Map<String, dynamic> json) => _$CloudFromJson(json);

  static Cloud empty() => Cloud(
        brandLogo: '',
        brandLogoLong: '',
        brandName: 'TTPOS',
        browserLogo: '',
        browserTitle: '',
        expirationReminder: -1,
      );
}
