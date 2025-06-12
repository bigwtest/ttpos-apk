import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_form.freezed.dart';
part 'member_form.g.dart';

///req.AddMemberReq
@freezed
class RequestMemberForm with _$RequestMemberForm {
  const factory RequestMemberForm({
    @JsonKey(name: "level_uuid") required int levelUuid,
    @JsonKey(name: "nickname") required String nickname,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "phone") required String phone,
  }) = _RequestMemberForm;

  factory RequestMemberForm.fromJson(Map<String, dynamic> json) => _$RequestMemberFormFromJson(json);
}
