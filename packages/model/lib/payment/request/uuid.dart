import 'package:freezed_annotation/freezed_annotation.dart';

part 'uuid.freezed.dart';
part 'uuid.g.dart';

@unfreezed
class RequestUuid with _$RequestUuid {
  factory RequestUuid({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestUuid;

  factory RequestUuid.fromJson(Map<String, dynamic> json) => _$RequestUuidFromJson(json);
}
