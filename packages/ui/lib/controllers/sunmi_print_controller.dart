import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_model/print_config/print_config.dart';

class SunmiPrintController {
  static Future<bool> sendSunmiLanPrinter(RespPrinterData printerData) async {
    try {
      if (kDebugMode) {
        print('商米打印机: 开始打印');
      }

      // 解析打印机配置
      final printerConfig = PrintConfig.fromJson(jsonDecode(printerData.printerConfig));

      if (kDebugMode) {
        print('商米打印机配置: ${printerConfig.toJson()}');
      }

      if (printerConfig.ip == null || printerConfig.sn == null) {
        if (kDebugMode) {
          print('商米打印机: IP或SN为空');
        }
        return false;
      }

      // 构建请求URL
      final path = '/cgi-bin/print.cgi';
      final url = 'http://${printerConfig.ip}$path?sn=${printerConfig.sn}&copies=${printerData.copies}';

      if (kDebugMode) {
        print('商米打印机请求URL: $url');
      }

      // 创建Dio实例
      final dio = Dio();

      // 设置请求头
      dio.options.headers['Content-Type'] = 'application/text; charset=utf-8';

      // 发送POST请求
      final response = await dio.post(
        url,
        data: printerData.data,
        options: Options(
          contentType: 'application/text; charset=utf-8',
        ),
      );

      // 检查响应状态
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print('商米打印机: 打印成功');
        }
        return true;
      } else {
        if (kDebugMode) {
          print('商米打印机: 打印失败，状态码: ${response.statusCode}');
        }
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print('商米打印机: 打印失败，错误: $e');
      }
      return false;
    }
  }

  static Future<bool> sendSunmiCloudPrinter(RespPrinterData printerData) async {
    try {
      if (kDebugMode) {
        print('商米云打印机: 开始打印');
      }

      // 解析打印机配置
      final printerConfig = PrintConfig.fromJson(jsonDecode(printerData.printerConfig));

      if (kDebugMode) {
        print('商米云打印机配置: ${printerConfig.toJson()}');
      }

      if (printerConfig.sn == null || printerConfig.appId == null || printerConfig.appKey == null) {
        if (kDebugMode) {
          print('商米云打印机: SN、APP_ID或APP_KEY为空');
        }
        return false;
      }

      // 构建请求URL
      const url = 'https://openapi.sunmi.com/v2/printer/open/open/device/pushContent';

      // 构建请求体
      final jsonBody = {
        'trade_no': generateRandomString(32),
        'sn': printerConfig.sn,
        'content': printerData.data,
        'count': printerData.copies > 1 ? printerData.copies : 1,
      };

      // 生成签名所需参数
      final nonce = '123456';
      final timestamp = (DateTime.now().millisecondsSinceEpoch / 1000).floor().toString();

      // 生成签名
      final sign = generateSign(
        jsonEncode(jsonBody),
        timestamp,
        nonce,
        printerConfig.appId!,
        printerConfig.appKey!,
      );

      if (kDebugMode) {
        print('商米云打印机请求参数:');
        print('SN: ${printerConfig.sn}');
        print('APP_ID: ${printerConfig.appId}');
        print('APP_KEY: ${printerConfig.appKey}');
        print('Sign: $sign');
        print('Body: ${jsonEncode(jsonBody)}');
      }

      // 创建Dio实例
      final dio = Dio();

      // 设置请求头
      final headers = {
        'Sunmi-Appid': printerConfig.appId,
        'Sunmi-Nonce': nonce,
        'Sunmi-Timestamp': timestamp,
        'Sunmi-Sign': sign,
        'Source': 'openapi',
        'Content-Type': 'application/json',
      };

      // 发送POST请求
      final response = await dio.post(
        url,
        data: jsonBody,
        options: Options(
          headers: headers,
          contentType: 'application/json',
        ),
      );

      // 检查响应状态
      if (response.statusCode == 200) {
        final responseData = response.data as Map<String, dynamic>;
        final code = responseData['code'] as int;

        if (code == 1 || code == 10000) {
          if (kDebugMode) {
            print('商米云打印机: 打印成功');
          }
          return true;
        } else {
          if (kDebugMode) {
            print('商米云打印机: 打印失败，错误码: $code,消息: ${responseData['msg']}');
          }
          return false;
        }
      } else {
        if (kDebugMode) {
          print('商米云打印机: 请求失败，状态码: ${response.statusCode}');
        }
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print('商米云打印机: 打印失败，错误: $e');
      }
      return false;
    }
  }

  static String generateRandomString(int length) {
    const String characters = 'abcdefghijklmnopqrstuvwxyz1234567890';
    final random = Random.secure();
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      final randomIndex = random.nextInt(characters.length);
      buffer.write(characters[randomIndex]);
    }

    return buffer.toString();
  }

  /// 生成签名
  static String generateSign(String body, String timestamp, String nonce, String appId, String appKey) {
    try {
      final msg = body + appId + timestamp + nonce;
      final key = utf8.encode(appKey);
      final bytes = utf8.encode(msg);

      final hmac = Hmac(sha256, key);
      final digest = hmac.convert(bytes);

      return bytesToHexString(digest.bytes);
    } catch (e) {
      if (kDebugMode) {
        print('生成签名失败: $e');
      }
      rethrow;
    }
  }

  /// 将字节数组转换为十六进制字符串
  static String bytesToHexString(List<int> bytes) {
    final buffer = StringBuffer();
    for (final byte in bytes) {
      buffer.write(byte.toRadixString(16).padLeft(2, '0'));
    }
    return buffer.toString();
  }
}
