import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_level.freezed.dart';
part 'member_level.g.dart';

///resp.MemberLevel
@freezed
class ResponseMemberLevel with _$ResponseMemberLevel {
  const factory ResponseMemberLevel({
    @JsonKey(name: "create_time") int? createTime,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "priority") int? priority,
    @JsonKey(name: "uuid") int? uuid,
  }) = _ResponseMemberLevel;

  factory ResponseMemberLevel.fromJson(Map<String, dynamic> json) => _$ResponseMemberLevelFromJson(json);
}
