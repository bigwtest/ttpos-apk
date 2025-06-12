import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_publickey.freezed.dart';
part 'create_publickey.g.dart';

@unfreezed
class RequestDataCreatePublicKey with _$RequestDataCreatePublicKey {
  factory RequestDataCreatePublicKey({
    @JsonKey(name: 'public_key') required String publicKey,
  }) = _RequestDataCreatePublicKey;

  factory RequestDataCreatePublicKey.fromJson(Map<String, dynamic> json) =>
      _$RequestDataCreatePublicKeyFromJson(json);
}
