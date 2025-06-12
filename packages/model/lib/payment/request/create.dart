import 'package:freezed_annotation/freezed_annotation.dart';

part 'create.freezed.dart';
part 'create.g.dart';

@unfreezed
class RequestCreatePaymentOrder with _$RequestCreatePaymentOrder {
  factory RequestCreatePaymentOrder({
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_order_uuid") int? paymentOrderUuid,
  }) = _RequestCreatePaymentOrder;

  factory RequestCreatePaymentOrder.fromJson(Map<String, dynamic> json) => _$RequestCreatePaymentOrderFromJson(json);
}
