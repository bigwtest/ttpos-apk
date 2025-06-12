import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/desk/response/category/models/desk_region.dart';
import 'package:ttpos_model/desk/response/category/models/desk_type.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class DeskCategory with _$DeskCategory {
  const factory DeskCategory({
    @JsonKey(name: "region") required DeskRegion region,
    @JsonKey(name: "type") required DeskType type,

    /// 更新时间
    @JsonKey(name: "update_time") @Default(0) int? updateTime,
  }) = _DeskCategory;

  factory DeskCategory.fromJson(Map<String, dynamic> json) => _$DeskCategoryFromJson(json);
}
