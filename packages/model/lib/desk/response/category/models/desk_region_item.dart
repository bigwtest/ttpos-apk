import 'package:freezed_annotation/freezed_annotation.dart';

part 'desk_region_item.freezed.dart';
part 'desk_region_item.g.dart';

@freezed
class DeskRegionItem with _$DeskRegionItem {
  const factory DeskRegionItem({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required int uuid,
  }) = _DeskRegionItem;

  factory DeskRegionItem.fromJson(Map<String, dynamic> json) => _$DeskRegionItemFromJson(json);
}
