import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@unfreezed
class Member with _$Member {
  factory Member({
    @JsonKey(name: "nickname") required String nickname,
    @JsonKey(name: "uuid") required int uuid,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
