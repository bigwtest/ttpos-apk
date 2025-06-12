import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_uuid.freezed.dart';
part 'member_uuid.g.dart';

@freezed
class RequestMemberUuid with _$RequestMemberUuid {
  const factory RequestMemberUuid({
    @JsonKey(name: "uuid") required int uuid,
  }) = _RequestMemberUuid;

  factory RequestMemberUuid.fromJson(Map<String, dynamic> json) =>
      _$RequestMemberUuidFromJson(json);
}
