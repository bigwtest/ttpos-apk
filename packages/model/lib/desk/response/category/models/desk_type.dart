import 'package:freezed_annotation/freezed_annotation.dart';

import 'desk_type_item.dart';

part 'desk_type.freezed.dart';
part 'desk_type.g.dart';

@freezed
class DeskType with _$DeskType {
  const factory DeskType({
    @JsonKey(name: "list") required List<DeskTypeItem> list,
  }) = _DeskType;

  factory DeskType.fromJson(Map<String, dynamic> json) => _$DeskTypeFromJson(json);
}
