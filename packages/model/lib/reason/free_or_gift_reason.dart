// To parse this JSON data, do
//
//     final response = responseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'free_or_gift_reason.freezed.dart';
part 'free_or_gift_reason.g.dart';

// resp.InstantHideSaleBill
@freezed
class ResponseFreeOrGiftReason with _$ResponseFreeOrGiftReason {
  const factory ResponseFreeOrGiftReason({
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "locale_name") required LocaleName localeName,
  }) = _ResponseFreeOrGiftReason;

  factory ResponseFreeOrGiftReason.fromJson(Map<String, dynamic> json) => _$ResponseFreeOrGiftReasonFromJson(json);
}
