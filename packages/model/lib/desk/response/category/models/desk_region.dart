import 'package:freezed_annotation/freezed_annotation.dart';

import 'desk_region_item.dart';

part 'desk_region.freezed.dart';
part 'desk_region.g.dart';

@freezed
class DeskRegion with _$DeskRegion {
  const factory DeskRegion({
    @JsonKey(name: "list") required List<DeskRegionItem> list,
  }) = _DeskRegion;

  factory DeskRegion.fromJson(Map<String, dynamic> json) => _$DeskRegionFromJson(json);
}
