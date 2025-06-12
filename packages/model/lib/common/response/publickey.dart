import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'publickey.freezed.dart';
part 'publickey.g.dart';

///ResponseCreatePublicKey 创建公钥响应
@unfreezed
class ResponseCreatePublicKey with _$ResponseCreatePublicKey {
  factory ResponseCreatePublicKey({
    ///客户端ID
    @JsonKey(name: 'client_id') required String clientId,

    ///公钥
    @JsonKey(name: 'public_key') required String publicKey,
  }) = _ResponseCreatePublicKey;

  factory ResponseCreatePublicKey.fromJson(Map<String, dynamic> json) =>
      _$ResponseCreatePublicKeyFromJson(json);
}
