// Flutter imports:
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_model/print_config/print_config.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/print_queue_controller.dart';
import 'package:ttpos_ui/controllers/send_printer_controller.dart';
import 'package:ttpos_ui/controllers/sunmi_print_controller.dart';
import 'package:ttpos_ui/controllers/usb_printer/usb_device_controller.dart';

class PrintController {
  static final MethodChannel channel = MethodChannel('printer.channel');
  static final UsbDeviceController usbDeviceController = Get.find<UsbDeviceController>();
  static Future<bool> sendPrint(RespPrinterData content, {bool isReport = true}) async {
    try {
      // return await usbPrintSomething(content);
      if (content.isCashierPrinter) {
        return await printSomething(content, isReport: isReport);
      } else if (content.isUsbPrinter == true) {
        return await usbPrintSomething(content, isReport: isReport);
      } else {
        return await cloudPrintSomething(content, isReport: isReport);
      }
    } catch (error, stackTrace) {
      if (isReport) {
        PrintQueueController.upsertProcessedItem(content, failed: true, failedReason: '打印失败,打印过程发生异常: $error');
      }
      debugPrint('sendPrint 打印失败 [PrintController], error: $error,\nstackTrace: $stackTrace');
      DialogManager.showToast('打印失败，请检查打印机是否连接'.tr);
      return false;
    }
  }

  static Future<bool> printSomething(RespPrinterData content, {bool isReport = true}) async {
    bool result = false;
    String? failedReason;
    try {
      result = await channel.invokeMethod<bool>('print', decompressData(content.data).toString()) ?? false;
      failedReason = result ? null : '打印命令发送失败';
    } catch (error, stackTrace) {
      debugPrint('printSomething 打印失败 [PrintController], error: $error,\nstackTrace: $stackTrace');
      result = false;
      failedReason = '打印过程发生异常: $error';
    }
    if (isReport) {
      PrintQueueController.upsertProcessedItem(content, failed: !result, failedReason: failedReason);
    }
    return result;
  }

  static Future<bool> usbPrintSomething(RespPrinterData content, {bool isReport = true}) async {
    bool result = false;
    String? failedReason;
    final printerConfig = PrintConfig.fromJson(jsonDecode(content.printerConfig));
    final isConnect = await usbDeviceController.connectUsbDevice(printerConfig.sn!);

    try {
      if (isConnect) {
        content = content.copyWith(data: decompressData(content.data));
        result = await channel.invokeMethod<bool>('usbprint', content.toJsonString()) ?? false;
        failedReason = result ? null : '打印命令发送失败';
      } else {
        result = false;
        failedReason = '打印机连接失败';
      }
    } catch (error, stackTrace) {
      debugPrint('usbPrintSomething 打印失败 [PrintController], error: $error,\nstackTrace: $stackTrace');
      result = false;
      failedReason = '打印过程发生异常: $error';
    }
    // 根据实际结果设置failed参数
    if (isReport) {
      PrintQueueController.upsertProcessedItem(content, failed: !result, failedReason: failedReason);
    }
    return result;
  }

  static Future<bool> cloudPrintSomething(RespPrinterData content, {bool isReport = true}) async {
    bool result = false;
    String? failedReason;
    try {
      content = content.copyWith(data: decompressData(content.data));

      if (content.printerType == 'XPRINTER_LAN' ||
          content.printerType == 'XPRINTER_WIFI' ||
          content.printerType == 'CODESOFT_LAN' ||
          content.printerType == 'CODESOFT_WIFI' /*|| content.printerType == 'SUNMI_LAN'*/) {
        result = await SendPrinterController.sendPrinter(content); //使用flutter发起打印
        failedReason = result ? null : '打印命令发送失败';
      } else if (content.printerType == 'SUNMI_LAN') {
        result = await SunmiPrintController.sendSunmiLanPrinter(content);
        failedReason = result ? null : '打印命令发送失败';
      } else if (content.printerType == 'SUNMI_CLOUD') {
        result = await SunmiPrintController.sendSunmiCloudPrinter(content);
        failedReason = result ? null : '打印命令发送失败';
      } else {
        result = await channel.invokeMethod<bool>('cloudprint', content.toJsonString()) ?? false;
        failedReason = result ? null : '打印命令发送失败';
      }
    } catch (error, stackTrace) {
      debugPrint('cloudPrintSomething 打印失败 [PrintController], error: $error,\nstackTrace: $stackTrace');
      result = false;
      failedReason = '打印过程发生异常: $error';
    }
    if (isReport) {
      PrintQueueController.upsertProcessedItem(content, failed: !result, failedReason: failedReason);
    }
    return result;
  }

  /// 解压数据
  /// 如果数据以 'ZSTD:' 开头，则尝试使用 zstd 算法解压
  /// 否则直接返回原始数据
  static String decompressData(String data) {
    if (data.isEmpty) {
      return data;
    }

    // 检查是否是压缩数据（使用不同的前缀，例如 'GZIP:'）
    if (data.startsWith('GZIP:')) {
      try {
        // 提取编码部分
        final encoded = data.substring(5); // 去掉 'GZIP:' 前缀
        // 解码Base64
        Uint8List compressed;
        try {
          compressed = base64Url.decode(encoded);
        } catch (error, stackTrace) {
          debugPrint('Base64解码失败: $error');
          debugPrintStack(stackTrace: stackTrace);
          return "";
        }
        // 使用GZip解压
        try {
          final decompressed = gzip.decode(compressed);
          return utf8.decode(decompressed);
        } catch (error, stackTrace) {
          debugPrint('GZip解压失败: $error');
          debugPrintStack(stackTrace: stackTrace);
          return "";
        }
      } catch (error, stackTrace) {
        debugPrint('解压过程中发生未知错误: $error');
        debugPrintStack(stackTrace: stackTrace);
        return "";
      }
    }

    // 非压缩数据
    return data;
  }
}
