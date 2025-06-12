import 'package:freezed_annotation/freezed_annotation.dart';

part 'bind.freezed.dart';
part 'bind.g.dart';

@unfreezed
class RequestDeskBind with _$RequestDeskBind {
  factory RequestDeskBind({
    @JsonKey(name: "desk_uuid") required int deskUuid,
    @JsonKey(name: "old_desk_uuid") int? oldDeskUuid,
  }) = _RequestDeskBind;

  factory RequestDeskBind.fromJson(Map<String, dynamic> json) => _$RequestDeskBindFromJson(json);
}
