import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payment_cancel_form.freezed.dart';
part 'order_payment_cancel_form.g.dart';

///req.InstantOrderPaymentCancelReq
@freezed
class RequestOrderPaymentCancelForm with _$RequestOrderPaymentCancelForm {
  const factory RequestOrderPaymentCancelForm({
    @JsonKey(name: "payment_order_uuid") required int paymentOrderUuid,
    @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
    @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
  }) = _RequestOrderPaymentCancelForm;

  factory RequestOrderPaymentCancelForm.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderPaymentCancelFormFromJson(json);
}
