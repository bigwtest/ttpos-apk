// To parse this JSON data, do
//
//     final response = responseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'return_reason.freezed.dart';
part 'return_reason.g.dart';

// resp.InstantHideSaleBill
@freezed
class ResponseReturnReason with _$ResponseReturnReason {
  const factory ResponseReturnReason({
    @JsonKey(name: "uuid") required int uuid,
    @JsonKey(name: "locale_name") required LocaleName localeName,
  }) = _ResponseReturnReason;

  factory ResponseReturnReason.fromJson(Map<String, dynamic> json) => _$ResponseReturnReasonFromJson(json);
}
