import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_query_params.freezed.dart';
part 'member_query_params.g.dart';

@freezed
class RequestParamsQueryMember with _$RequestParamsQueryMember {
  const factory RequestParamsQueryMember({
    @JsonKey(name: "keyword") required String keyword,
  }) = _RequestParamsQueryMember;

  factory RequestParamsQueryMember.fromJson(Map<String, dynamic> json) => _$RequestParamsQueryMemberFromJson(json);
}
