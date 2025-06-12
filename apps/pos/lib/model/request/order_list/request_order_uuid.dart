import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_uuid.freezed.dart';
part 'request_order_uuid.g.dart';

///RequestOrderForMeals 登录表单
@unfreezed
class RequestOrderUuid with _$RequestOrderUuid {
  factory RequestOrderUuid({
    @JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
    @JsonKey(name: "sale_order_uuid") int? saleOrderUuid,
  }) = _RequestOrderUuid;

  factory RequestOrderUuid.fromJson(Map<String, dynamic> json) => _$RequestOrderUuidFromJson(json);
}
