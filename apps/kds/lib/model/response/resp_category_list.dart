import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'resp_category_list.freezed.dart';
part 'resp_category_list.g.dart';

// 商品分类
@unfreezed
class ResponseCategory with _$ResponseCategory {
  factory ResponseCategory({
    @JsonKey(name: "category_key") required String categoryKey,
    // 子级类别
    @JsonKey(name: "children") required ResponseCategoryChildren children,
    // 是否特殊类别
    @JsonKey(name: "is_special") required bool isSpecial,
    // 商品类别名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 父级类别UUID
    @JsonKey(name: "parent_uuid") required int parentUuid,
    // 商品类别UUID
    @JsonKey(name: "uuid") required int uuid,
  }) = _ResponseCategory;

  factory ResponseCategory.fromJson(Map<String, dynamic> json) => _$ResponseCategoryFromJson(json);
}

@unfreezed
class ResponseCategoryChildren with _$ResponseCategoryChildren {
  factory ResponseCategoryChildren({
    @JsonKey(name: "list") required List<ResponseCategory> list,
  }) = _ResponseCategoryChildren;

  factory ResponseCategoryChildren.fromJson(Map<String, dynamic> json) => _$ResponseCategoryChildrenFromJson(json);
}
