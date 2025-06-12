import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

part 'category.freezed.dart';
part 'category.g.dart';

// 商品分类
@unfreezed
class GoodsCategory with _$GoodsCategory {
  factory GoodsCategory({
    // 子级类别
    @JsonKey(name: "children") required GoodsCategoryChildren children,
    // 是否特殊类别
    @JsonKey(name: "is_special") required bool isSpecial,
    // 商品类别名称
    @JsonKey(name: "locale_name") required LocaleName localeName,
    // 父级类别UUID
    @JsonKey(name: "parent_uuid") required int parentUuid,
    // 商品类别UUID
    @JsonKey(name: "uuid") required int uuid,
    // 等于all=>表示是全部分类
    @JsonKey(name: "category_key") required String categoryKey,
  }) = _GoodsCategory;

  factory GoodsCategory.fromJson(Map<String, dynamic> json) => _$GoodsCategoryFromJson(json);
}

@unfreezed
class GoodsCategoryChildren with _$GoodsCategoryChildren {
  factory GoodsCategoryChildren({
    @JsonKey(name: "list") required List<GoodsCategory> list,
  }) = _GoodsCategoryChildren;

  factory GoodsCategoryChildren.fromJson(Map<String, dynamic> json) => _$GoodsCategoryChildrenFromJson(json);
}

extension GoodsCategoryExtension on GoodsCategory {
  // 是否为全部分类
  bool get isAllCategory {
    try {
      return categoryKey == 'all';
    } catch (error, stackTrace) {
      debugPrint('GoodsCategoryExtension=>categoryKey, this=>$this, error:$error');
      debugPrintStack(stackTrace: stackTrace);
    }
    return false;
  }
}
