import 'package:freezed_annotation/freezed_annotation.dart';

part 'uuid.freezed.dart';
part 'uuid.g.dart';

@unfreezed
class RequestUuid with _$RequestUuid {
  factory RequestUuid({
    required int uuid,
  }) = _RequestUuid;

  factory RequestUuid.fromJson(Map<String, dynamic> json) => _$RequestUuidFromJson(json);
}
