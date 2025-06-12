import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@freezed
class Member with _$Member {
  const factory Member({
    @JsonKey(name: "balance") required SafetyNumber balance,
    @JsonKey(name: "card") required MemberCard card,
    @JsonKey(name: "level") required MemberLevel level,
    @JsonKey(name: "nickname") required String nickname,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "points") required SafetyNumber points,
    @JsonKey(name: "uuid") required int uuid,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

@freezed
class MemberCard with _$MemberCard {
  const factory MemberCard({
    @JsonKey(name: "name") String? name,
  }) = _MemberCard;

  factory MemberCard.fromJson(Map<String, dynamic> json) => _$MemberCardFromJson(json);
}

@freezed
class MemberLevel with _$MemberLevel {
  const factory MemberLevel({
    @JsonKey(name: "name") String? name,
  }) = _MemberLevel;

  factory MemberLevel.fromJson(Map<String, dynamic> json) => _$MemberLevelFromJson(json);
}
