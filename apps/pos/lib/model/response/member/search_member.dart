import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_member.freezed.dart';
part 'search_member.g.dart';

///SearchMember
@freezed
class ResponseSearchMember with _$ResponseSearchMember {
  const factory ResponseSearchMember({
    @JsonKey(name: "nickname") required String nickname,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "uuid") required int uuid,
  }) = _ResponseSearchMember;

  factory ResponseSearchMember.fromJson(Map<String, dynamic> json) => _$ResponseSearchMemberFromJson(json);
}
