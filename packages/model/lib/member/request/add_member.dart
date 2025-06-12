import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_member.freezed.dart';
part 'add_member.g.dart';

///req.AddMemberReq
@unfreezed
class RequestAddMember with _$RequestAddMember {
  factory RequestAddMember({
    @JsonKey(name: "level_uuid") required int levelUuid,
    @JsonKey(name: "nickname") required String nickname,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "phone") required String phone,
  }) = _RequestAddMember;

  factory RequestAddMember.fromJson(Map<String, dynamic> json) => _$RequestAddMemberFromJson(json);

  // 空
  static RequestAddMember empty() => RequestAddMember(
        levelUuid: 0,
        nickname: '',
        password: '',
        phone: '',
      );
}
