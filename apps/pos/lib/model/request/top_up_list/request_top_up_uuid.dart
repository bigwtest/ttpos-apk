import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_top_up_uuid.freezed.dart';
part 'request_top_up_uuid.g.dart';

@unfreezed
class RequestTopUpUuid with _$RequestTopUpUuid {
  factory RequestTopUpUuid({
    @JsonKey(name: "uuid") required int uuid,
  }) = _RequestTopUpUuid;

  factory RequestTopUpUuid.fromJson(Map<String, dynamic> json) =>
      _$RequestTopUpUuidFromJson(json);
}
