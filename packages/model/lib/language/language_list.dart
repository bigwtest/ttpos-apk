import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/language/language_item.dart';

part 'language_list.freezed.dart';
part 'language_list.g.dart';

@freezed
class LanguageList with _$LanguageList {
  const factory LanguageList({
    @JsonKey(name: "default_language") required String defaultLanguage,
    @JsonKey(name: "language_list") required List<LanguageItem> languageList,
    @JsonKey(name: "languages") required List<String> languages,
  }) = _LanguageList;

  factory LanguageList.fromJson(Map<String, dynamic> json) => _$LanguageListFromJson(json);
}
