import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';
part 'payment_method.g.dart';

///resp.PaymentMethodItem
@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "fee_percent") required double feePercent,
    @JsonKey(name: "logo") required String logo,
    @JsonKey(name: "payment_name") required String paymentName,
    @JsonKey(name: "qrcode") required String qrcode,
    @JsonKey(name: "source") required int source,
    @JsonKey(name: "source_text") required String sourceText,
    @JsonKey(name: "uuid") required int uuid,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}
