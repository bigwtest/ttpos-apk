import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payment_info.freezed.dart';
part 'order_payment_info.g.dart';

@freezed
class RequestOrderPaymentInfo with _$RequestOrderPaymentInfo {
  const factory RequestOrderPaymentInfo({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestOrderPaymentInfo;

  factory RequestOrderPaymentInfo.fromJson(Map<String, dynamic> json) => _$RequestOrderPaymentInfoFromJson(json);
}
