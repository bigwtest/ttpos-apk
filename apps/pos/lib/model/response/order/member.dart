import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';
part 'member.g.dart';

// @ExtraRequestOptions()
@freezed
class ResponseMemberData with _$ResponseMemberData {
  factory ResponseMemberData({
    // 会员
    @JsonKey(name: "list") required List<ResponseMember> list,
    // 
    @JsonKey(name: "extra") required ResponseMemberExtra extra,
  }) = _ResponseMemberData;

  factory ResponseMemberData.fromJson(Map<String, dynamic> json) =>
      _$ResponseMemberDataFromJson(json);
}

@freezed
class ResponseMember with _$ResponseMember {
  factory ResponseMember({
    // 会员UUID
    @JsonKey(name: "uuid") required int uuid,
    // 会员名称
    @JsonKey(name: "nickname") required String nickname,
    // 会员手机号
    @JsonKey(name: "phone") required String phone,
  }) = _ResponseMember;

  factory ResponseMember.fromJson(Map<String, dynamic> json) =>
      _$ResponseMemberFromJson(json);
}

@freezed
class ResponseMemberExtra with _$ResponseMemberExtra {
  factory ResponseMemberExtra({
    // 是否结账
    @JsonKey(name: "is_checkout") required bool isCheckout,
    // 是否部分结账
    @JsonKey(name: "is_partial_checkout") required bool isPartialCheckout,
  }) = _ResponseMemberExtra;

  factory ResponseMemberExtra.fromJson(Map<String, dynamic> json) =>
      _$ResponseMemberExtraFromJson(json);
}