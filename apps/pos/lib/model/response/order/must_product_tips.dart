import 'package:freezed_annotation/freezed_annotation.dart';

part 'must_product_tips.freezed.dart';
part 'must_product_tips.g.dart';

@freezed
class ResponseMustProductTips with _$ResponseMustProductTips {
  factory ResponseMustProductTips({
    // 名称
    @JsonKey(name: 'name') String? name,
    // 数量
    @JsonKey(name: 'num') int? num,
  }) = _ResponseMustProductTips;

  factory ResponseMustProductTips.fromJson(Map<String, dynamic> json) =>
      _$ResponseMustProductTipsFromJson(json);

}