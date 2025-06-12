// Flutter imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'cart_buffet.freezed.dart';
part 'cart_buffet.g.dart';

@freezed
class ResponseCartBuffet with _$ResponseCartBuffet {
  factory ResponseCartBuffet({
    // 自助餐剩余秒数
    @JsonKey(name: 'remaining_seconds') required int remainingSeconds,
    // 自助餐名称
    @JsonKey(name: 'locale_name') required LocaleName localeName,
  }) = _ResponseCartBuffet;

  factory ResponseCartBuffet.fromJson(Map<String, dynamic> json) => _$ResponseCartBuffetFromJson(json);
}
