import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_uuid.freezed.dart';
part 'request_uuid.g.dart';

///RequestOrderForMeals 登录表单
@unfreezed
class RequestUuid with _$RequestUuid {
  factory RequestUuid({
    @JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
  }) = _RequestUuid;

  factory RequestUuid.fromJson(Map<String, dynamic> json) => _$RequestUuidFromJson(json);
}
