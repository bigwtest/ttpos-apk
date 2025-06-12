import 'package:freezed_annotation/freezed_annotation.dart';

part 'buffet.freezed.dart';
part 'buffet.g.dart';

// 商品列表
@freezed
class GoodsBuffet with _$GoodsBuffet {
  factory GoodsBuffet({
    // 商品名称
    // @JsonKey(name: "locale_name") required LocaleName localeName,
    // 商品UUID
    @JsonKey(name: "uuid") required int uuid,
    // 限制数量
    @JsonKey(name: "limit") required int limit,
  }) = _GoodsBuffet;

  factory GoodsBuffet.fromJson(Map<String, dynamic> json) => _$GoodsBuffetFromJson(json);
}
