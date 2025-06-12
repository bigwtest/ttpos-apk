import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details.freezed.dart';
part 'order_details.g.dart';

@unfreezed
class RequestOrderDetails with _$RequestOrderDetails {
  factory RequestOrderDetails({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") @Default(0) int? saleOrderUuid,
  }) = _RequestOrderDetails;

  factory RequestOrderDetails.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderDetailsFromJson(json);
}
