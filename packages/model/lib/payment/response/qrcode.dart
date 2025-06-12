import 'package:freezed_annotation/freezed_annotation.dart';

part 'qrcode.freezed.dart';
part 'qrcode.g.dart';

@freezed
class PaymentQrcode with _$PaymentQrcode {
  const factory PaymentQrcode({
    @JsonKey(name: "payment_amount") required double paymentAmount,
    @JsonKey(name: "payment_order_uuid") required int paymentOrderUuid,
    @JsonKey(name: "qr_code") required String qrCode,
    @JsonKey(name: "qr_code_expire_sec") required int qrCodeExpireSec,
    @JsonKey(name: "status") required int status,
  }) = _PaymentQrcode;

  factory PaymentQrcode.fromJson(Map<String, dynamic> json) => _$PaymentQrcodeFromJson(json);
}
