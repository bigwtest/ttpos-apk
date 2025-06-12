import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/response/attributes/attributes.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'attribute_groups.freezed.dart';
part 'attribute_groups.g.dart';

// 商品属性值
@freezed
class GoodsAttributeGroups with _$GoodsAttributeGroups {
  const factory GoodsAttributeGroups({
    // 商品属性值列表
    @JsonKey(name: "attributes") required BaseList<GoodsAttributes> attributes,
    // 是否必选
    @JsonKey(name: "is_must") required bool isMust,
    // 商品属性组名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 最大可选数量
    @JsonKey(name: "max_select") required int maxSelect,
    // 商品属性组UUID
    @JsonKey(name: "uuid") int? uuid,
  }) = _GoodsAttributeGroups;

  factory GoodsAttributeGroups.fromJson(Map<String, dynamic> json) => _$GoodsAttributeGroupsFromJson(json);
}
