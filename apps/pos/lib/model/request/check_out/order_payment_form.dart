import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payment_form.freezed.dart';
part 'order_payment_form.g.dart';

///req.InstantOrderPaymentCreateReq
@freezed
class RequestOrderPaymentForm with _$RequestOrderPaymentForm {
  const factory RequestOrderPaymentForm({
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestOrderPaymentForm;

  factory RequestOrderPaymentForm.fromJson(Map<String, dynamic> json) => _$RequestOrderPaymentFormFromJson(json);
}
