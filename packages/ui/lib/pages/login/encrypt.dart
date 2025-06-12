import 'package:encrypt/encrypt.dart';

class UILoginEncrypt {
  // FIXME: 想一个更好的方案
  static const _secretKey = '01234567899876543210012345678921'; //32位
  static const _secretIv = '9876543210654321'; //16位

  static final key = Key.fromUtf8(_secretKey);
  static final iv = IV.fromUtf8(_secretIv);

  static final encrypter = Encrypter(AES(key));

  // 加密方法
  static String encrypt(String text) {
    final encrypted = encrypter.encrypt(text, iv: iv);
    return encrypted.base64;
  }

  // 解密方法
  static String decrypt(String text) {
    try {
      final decrypted = encrypter.decrypt64(text, iv: iv);
      return decrypted;
    } catch (e) {
      return text;
    }
  }
}
