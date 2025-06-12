import 'package:freezed_annotation/freezed_annotation.dart';

part 'close.freezed.dart';
part 'close.g.dart';

@freezed
class RequestDeskClose with _$RequestDeskClose {
  const factory RequestDeskClose({
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "reason") required String reason,
    @JsonKey(name: "uuid") required int uuid,
  }) = _RequestDeskClose;

  factory RequestDeskClose.fromJson(Map<String, dynamic> json) => _$RequestDeskCloseFromJson(json);
}
