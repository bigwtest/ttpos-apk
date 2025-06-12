import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_card.freezed.dart';
part 'member_card.g.dart';

///resp.MemberLevel
@freezed
class ResponseMemberCard with _$ResponseMemberCard {
  const factory ResponseMemberCard({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") int? uuid,
  }) = _ResponseMemberCard;

  factory ResponseMemberCard.fromJson(Map<String, dynamic> json) => _$ResponseMemberCardFromJson(json);
}
