import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_key.freezed.dart';
part 'public_key.g.dart';

@freezed
class ResponseDataServerPublicKey with _$ResponseDataServerPublicKey {
  factory ResponseDataServerPublicKey({
    @JsonKey(name: "key") required String publicKey,
    @JsonKey(name: "type") String? encryptType,
    @JsonKey(name: "id") String? clientId,
  }) = _ResponseDataServerPublicKey;

  factory ResponseDataServerPublicKey.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataServerPublicKeyFromJson(json);
}
