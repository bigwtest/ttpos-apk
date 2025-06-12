import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_member.freezed.dart';
part 'search_member.g.dart';

///SearchMember
@freezed
class SearchMember with _$SearchMember {
  const factory SearchMember({
    @JsonKey(name: "nickname") required String nickname,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "uuid") required int uuid,
  }) = _SearchMember;

  factory SearchMember.fromJson(Map<String, dynamic> json) => _$SearchMemberFromJson(json);
}
