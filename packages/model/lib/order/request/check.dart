import 'package:freezed_annotation/freezed_annotation.dart';

part 'check.freezed.dart';
part 'check.g.dart';

@unfreezed
class RequestOrderCheck with _$RequestOrderCheck {
  factory RequestOrderCheck({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "ignore_must") required bool ignoreMust,
  }) = _RequestOrderCheck;

  factory RequestOrderCheck.fromJson(Map<String, dynamic> json) => _$RequestOrderCheckFromJson(json);
}
