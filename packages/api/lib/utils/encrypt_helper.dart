import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart'
    show AsymmetricKeyPair, CryptoUtils, PrivateKey, PublicKey, RSAPrivateKey, RSAPublicKey;
import 'package:encrypt/encrypt.dart';
import 'package:flutter/foundation.dart' show debugPrint, debugPrintStack;
import 'package:pointycastle/export.dart' as pc;

class RSAKeyPairResponse {
  final String publicKey;
  final String privateKey;
  final String clientId;

  RSAKeyPairResponse({
    required this.publicKey,
    required this.privateKey,
    required this.clientId,
  });

  Map<String, String> get entries => {
        'publicKey': publicKey,
        'privateKey': privateKey,
        'clientId': clientId,
      };
}

/// AES 加密工具类
class EncryptHelper {
  /// 生成随机字符串
  static String _generateRandomString(int length) {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random.secure();
    return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
  }

  /// 生成 RSA 密钥对
  static Future<RSAKeyPairResponse?> generateKeyPair({
    required String clientId,
    int bitLength = 2048,
  }) async {
    try {
      final AsymmetricKeyPair<PublicKey, PrivateKey> keyPair = CryptoUtils.generateRSAKeyPair(keySize: bitLength);

      return RSAKeyPairResponse(
        publicKey: formatPublicKey(
          CryptoUtils.encodeRSAPublicKeyToPem(keyPair.publicKey as RSAPublicKey),
          isPublic: true,
        ),
        privateKey: formatPublicKey(
          CryptoUtils.encodeRSAPrivateKeyToPem(keyPair.privateKey as RSAPrivateKey),
          isPublic: false,
        ),
        clientId: clientId,
      );
    } catch (error, stackTrace) {
      debugPrint('EncryptHelper generateKeyPair error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  /// 创建 AES 加密器
  /// [key] base64 格式的密钥
  static Encrypter createAESEncrypter(String key) {
    return Encrypter(
      AES(
        Key.fromBase64(key),
        mode: AESMode.cbc, // 使用 CBC 模式
        padding: 'PKCS7', // 使用 PKCS7 填充
      ),
    );
  }

  /// 加密数据
  /// [content] 要加密的数据
  /// [rsaPublicKey] RSA 公钥
  static Future<String?> encrypt(dynamic content, String rsaPublicKey) async {
    try {
      // 生成随机对称密钥和 IV
      final symmetricKey = _generateRandomString(16);
      final iv = _generateRandomString(16);

      // 将内容转换为 JSON 字符串
      final jsonContent = jsonEncode(content);

      // AES 加密
      final encrypter = createAESEncrypter(base64.encode(utf8.encode(symmetricKey)));
      final encrypted = encrypter.encrypt(
        jsonContent,
        iv: IV.fromUtf8(iv),
      );

      // RSA 加密对称密钥
      final publicKey = CryptoUtils.rsaPublicKeyFromPem(rsaPublicKey);
      final rsaEncrypted = CryptoUtils.rsaEncrypt(symmetricKey, publicKey);

      // 组合数据：base64(iv||ciphertext||encryptedKey)
      final combinedData = '${base64.encode(utf8.encode(iv))}||${encrypted.base64}||$rsaEncrypted';
      return base64.encode(utf8.encode(combinedData));
    } catch (error, stackTrace) {
      debugPrint('EncryptHelper encrypt error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  /// 解密数据
  /// [content] 加密的数据（格式：base64(iv||ciphertext||encryptedKey)）
  /// [privateKey] RSA 私钥（PEM 格式）
  /// [clientId] 客户端 ID
  static Future<dynamic> decrypt(
    String content,
    String privateKey,
    String clientId,
  ) async {
    try {
      // 分割加密数据
      final parts = content.split('||');
      if (parts.length != 3) {
        throw Exception('无效的加密数据格式');
      }

      final encryptedData = base64.decode(parts[0]); // IV + 密文
      final encryptedKey = parts[1]; // RSA 加密的对称密钥

      // 使用 RSA 私钥解密对称密钥
      final rsaPrivateKey = CryptoUtils.rsaPrivateKeyFromPem(privateKey);
      final symmetricKey = CryptoUtils.rsaDecrypt(encryptedKey, rsaPrivateKey);

      // 分离 IV 和密文
      final ivBytes = encryptedData.sublist(0, 16); // 前16字节是 IV
      final cipherBytes = encryptedData.sublist(16); // 剩余部分是密文

      // 使用 AES 解密
      final aesKey = pc.KeyParameter(Uint8List.fromList(utf8.encode(symmetricKey)));
      final params = pc.ParametersWithIV(aesKey, ivBytes);

      final cipher = pc.CBCBlockCipher(pc.AESEngine())..init(false, params);

      // 解密数据
      final paddedPlaintext = _processBlocks(cipher, cipherBytes);
      final plaintext = _removePadding(paddedPlaintext);

      return jsonDecode(utf8.decode(plaintext));
    } catch (error, stackTrace) {
      debugPrint('EncryptHelper decrypt error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  /// 处理分块加密/解密
  static Uint8List _processBlocks(pc.BlockCipher cipher, Uint8List input) {
    final output = Uint8List(input.length);
    for (var offset = 0; offset < input.length; offset += cipher.blockSize) {
      cipher.processBlock(input, offset, output, offset);
    }
    return output;
  }

  /// 移除 PKCS7 填充
  static Uint8List _removePadding(Uint8List padded) {
    final padLength = padded[padded.length - 1];
    return padded.sublist(0, padded.length - padLength);
  }

  /// 格式化 RSA 公钥
  /// 移除 PEM 格式的头尾，并替换特殊字符
  static String formatPublicKey(String key, {bool isPublic = true}) {
    return key
        .replaceAll(
          isPublic ? RegExp(r'\s*-----BEGIN PUBLIC KEY-----\s*') : RegExp(r'\s*-----BEGIN PRIVATE KEY-----\s*'),
          '',
        )
        .replaceAll(
          isPublic ? RegExp(r'\s*-----END PUBLIC KEY-----\s*') : RegExp(r'\s*-----END PRIVATE KEY-----\s*'),
          '',
        )
        .replaceAll(RegExp(r'\n+'), r'$')
        .replaceAll('+', '-')
        .replaceAll('/', '_');
  }
}
