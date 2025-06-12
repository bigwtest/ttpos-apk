import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_model/print_config/print_config.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class SendPrinterController {
  static Future<bool> sendPrinter(RespPrinterData printerData) async {
    try {
      if (kDebugMode) {
        print('printerConfig${printerData.printerConfig.toString()}');
      }
      // 解析打印机配置
      final printerConfig = PrintConfig.fromJson(jsonDecode(printerData.printerConfig));
      if (kDebugMode) {
        print('printerConfig${printerConfig.toJson()}');
      }
      if (printerConfig.ip == null || printerConfig.port == null) {
        return false;
      }

      int printTimes = printerData.copies > 0 ? printerData.copies : 1; // 打印次数

      for (int i = 0; i < printTimes; i++) {
        int repeatTime = 5;
        bool isComplete = false;
        for (int a = 0; a < repeatTime; a++) {
          if (await socketSend(printerConfig, printerData)) {
            isComplete = true;
            break;
          }
        }

        if (!isComplete) {
          // 其中一次失败尝试后就返回错误
          return false;
        }
      }
      return true;
    } catch (e) {
      if (kDebugMode) {
        print('打印失败: $e');
      }
      return false;
    }
  }

  /// 通过 Socket 发送打印数据
  static Future<bool> socketSend(PrintConfig printerConfig, RespPrinterData printerData) async {
    try {
      // 初始化打印机指令
      final init = [0x1B, 0x40];

      // 等待 500ms
      await Future.delayed(const Duration(milliseconds: 500));

      // 创建 Socket 连接，设置超时时间
      Socket? socket;
      try {
        socket =
            await Socket.connect(printerConfig.ip, int.parse(printerConfig.port!), timeout: const Duration(seconds: 5));
      } catch (e) {
        if (kDebugMode) {
          print('连接打印机失败: $e');
        }
        return false;
      }

      try {
        // 初始化打印机
        socket.add(init);

        if (printerData.printMethod == 1) {
          if (kIsWeb || !Platform.isAndroid) {
            DialogManager.showToast('此平台暂不支持文本打印'.tr);
            return false;
          }
          // 使用原生方法处理内容
          final bytes = await decodeContent(printerData.data);
          if (bytes != null) {
            socket.add(bytes);
          } else {
            return false;
          }
        } else {
          // 直接发送十六进制数据
          final bytes = getBytesFromHexString(printerData.data);
          if (bytes != null) {
            socket.add(bytes);
          } else {
            return false;
          }
        }

        // 等待写入完成
        await socket.flush();
        await socket.close();

        // 等待 1 秒
        await Future.delayed(const Duration(seconds: 1));

        if (kDebugMode) {
          print('printerSend success');
        }
        return true;
      } catch (e) {
        if (kDebugMode) {
          print('send打印失败: $e');
        }
        return false;
      } finally {
        socket.destroy();
      }
    } catch (e) {
      if (kDebugMode) {
        print('连接失败: $e');
      }
      return false;
    }
  }

  /// 字符串编码转换
  static Future<List<int>?> stringToByte(String from, String to, String content) async {
    try {
      // 这里需要调用原生方法进行编码转换
      const platform = MethodChannel('com.ttpos.cashier/encoding');
      final result = await platform.invokeMethod('stringToByte', {
        'from': from,
        'to': to,
        'content': content,
      });
      return result as List<int>?;
    } catch (e) {
      if (kDebugMode) {
        print('编码转换失败: $e');
      }
      return null;
    }
  }

  /// 将十六进制字符串转换为字节数组
  static List<int>? getBytesFromHexString(String hexString) {
    if (hexString.isEmpty) {
      return null;
    }

    // 移除空格并转换为大写
    hexString = hexString.replaceAll(' ', '').toUpperCase();
    final size = hexString.length ~/ 2;
    final rv = List<int>.filled(size, 0);

    for (int i = 0; i < size; i++) {
      final pos = i * 2;
      final high = _charToByte(hexString.codeUnitAt(pos));
      final low = _charToByte(hexString.codeUnitAt(pos + 1));
      rv[i] = (high << 4) | low;
    }

    return rv;
  }

  /// 将字符转换为对应的字节值
  static int _charToByte(int c) {
    return '0123456789ABCDEF'.indexOf(String.fromCharCode(c));
  }

  /// 使用原生方法处理内容并编码
  static Future<List<int>?> decodeContent(String content) async {
    try {
      const platform = MethodChannel('decode.channel');
      final result = await platform.invokeMethod('separatorAndEncodeContent', content);
      if (kDebugMode) {
        print('result: $result');
      }
      if (result is List) {
        return result.cast<int>();
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print('解码失败: $e');
      }
      return null;
    }
  }

  /// 分隔内容，将泰文、韩文和泰铢符号与其他内容分开
  static Future<List<String>?> separatorContent(String content) async {
    try {
      // 直接调用原生方法处理
      final bytes = await decodeContent(content);
      if (bytes == null) {
        return null;
      }
      // 将字节数组转换为十六进制字符串
      final hexString = bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
      return [hexString];
    } catch (e) {
      if (kDebugMode) {
        print('分隔内容失败: $e');
      }
      return null;
    }
  }
}
