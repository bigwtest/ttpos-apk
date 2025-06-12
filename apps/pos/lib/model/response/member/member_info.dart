import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/model/response/member/member_card.dart';
import 'package:pos/model/response/member/member_level.dart';

part 'member_info.freezed.dart';
part 'member_info.g.dart';

///resp.RechargeMember
@freezed
class ResponseMemberInfo with _$ResponseMemberInfo {
  const factory ResponseMemberInfo({
    @JsonKey(name: "balance") required double balance,
    @JsonKey(name: "card") required ResponseMemberCard card,
    @JsonKey(name: "level") required ResponseMemberLevel level,
    @JsonKey(name: "nickname") required String nickname,
    @JsonKey(name: "points") required double points,
    @JsonKey(name: "uuid") required int uuid,
  }) = _ResponseMemberInfo;

  factory ResponseMemberInfo.fromJson(Map<String, dynamic> json) => _$ResponseMemberInfoFromJson(json);
}
