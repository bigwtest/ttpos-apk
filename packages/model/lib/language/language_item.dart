import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_item.freezed.dart';
part 'language_item.g.dart';

@freezed
class LanguageItem with _$LanguageItem {
  const factory LanguageItem({
    @JsonKey(name: "key") int? key,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "value") required String value,
  }) = _LanguageItem;

  factory LanguageItem.fromJson(Map<String, dynamic> json) => _$LanguageItemFromJson(json);
}
