import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_name.freezed.dart';
part 'locale_name.g.dart';

// 翻译信息
@freezed
class LocaleName with _$LocaleName {
  factory LocaleName({
    @JsonKey(name: "en") String? en,
    @JsonKey(name: "ja") String? ja,
    @JsonKey(name: "ko") String? ko,
    @JsonKey(name: "my") String? my,
    @JsonKey(name: "th") String? th,
    @JsonKey(name: "tr") String? tr,
    @JsonKey(name: "zh") String? zh,
    @JsonKey(name: "zhtw") String? zhtw,
    // @JsonKey(name: "de") String? de,
  }) = _LocaleName;

  factory LocaleName.fromJson(Map<String, dynamic> json) =>
      _$LocaleNameFromJson(json);
}
