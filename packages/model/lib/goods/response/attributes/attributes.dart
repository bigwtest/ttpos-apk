import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'attributes.freezed.dart';
part 'attributes.g.dart';

// 商品属性组
@freezed
class GoodsAttributes with _$GoodsAttributes {
  const factory GoodsAttributes({
    // 是否默认选中
    @JsonKey(name: "is_default_selected") required bool isDefaultSelected,
    // 商品属性名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 商品属性UUID
    @JsonKey(name: "uuid") required int uuid,
  }) = _GoodsAttributes;

  factory GoodsAttributes.fromJson(Map<String, dynamic> json) => _$GoodsAttributesFromJson(json);
}
