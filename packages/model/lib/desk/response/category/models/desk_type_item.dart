import 'package:freezed_annotation/freezed_annotation.dart';

part 'desk_type_item.freezed.dart';
part 'desk_type_item.g.dart';

@freezed
class DeskTypeItem with _$DeskTypeItem {
  const factory DeskTypeItem({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required int uuid,
  }) = _DeskTypeItem;

  factory DeskTypeItem.fromJson(Map<String, dynamic> json) => _$DeskTypeItemFromJson(json);
}
