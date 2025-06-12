import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel.freezed.dart';
part 'cancel.g.dart';

@unfreezed
class RequestCancelPaymentOrder with _$RequestCancelPaymentOrder {
  factory RequestCancelPaymentOrder({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "payment_order_uuid") required int paymentOrderUuid,
  }) = _RequestCancelPaymentOrder;

  factory RequestCancelPaymentOrder.fromJson(Map<String, dynamic> json) => _$RequestCancelPaymentOrderFromJson(json);
}
