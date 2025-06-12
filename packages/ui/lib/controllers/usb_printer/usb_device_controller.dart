import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/usb_print/req_usb_printer_data.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:usb_serial/usb_serial.dart';

// 打印机品牌枚举
enum PrinterBrand {
  xpN160II, // 芯烨 XP-N160II
  xpN160IIV2, // 芯烨 XP-N160II V2
  gpD300I, // 佳博 GP-D300I
  gpC200IV, // 佳博 GP-C200IV
  sppos887e, // 思普瑞特 SP-POS887E
  unknown, // 未知品牌
}

class UsbDeviceController extends GetxController {
  final Future<bool> Function({required List<ReqUsbPrinterData> data}) reportUsbPrinterData;

  UsbDeviceController({required this.reportUsbPrinterData});
  bool isUsbListening = false;
  @override
  void onReady() {
    super.onReady();
    getUsbDevice();
    initUsbPrinterChannel();
    isUsbListening = true;
  }

  @override
  void onClose() {
    isUsbListening = false;
  }

  final Log _logger = Log(appName: 'UsbDeviceController');
  Logger get logger => _logger.logger;

  final usbConnectChannel = MethodChannel('usb.connect.channel');

  // 根据 vid 和 pid 识别打印机品牌
  static PrinterBrand getPrinterBrand(int? vid, int? pid, String? manufacturerName) {
    if (vid == null || pid == null) {
      return PrinterBrand.unknown;
    }

    // 芯烨 XP-N160II: vid=1155, pid=22339
    if (vid == 1155 && pid == 22339) {
      return PrinterBrand.xpN160II;
    }
    // 芯烨 XP-N160II V2: vid=8137, pid=8214
    else if (vid == 8137 && pid == 8214) {
      return PrinterBrand.xpN160IIV2;
    }
    // 思普瑞特 SP-POS887E: vid=1155, pid=22304
    else if (vid == 1155 && pid == 22304) {
      return PrinterBrand.sppos887e;
    }
    // 佳博打印机
    else if (vid == 1137 && pid == 85) {
      // GP-D300I: manufacturerName = "Zhuhai Howbest Label Printer Co.,Ltd."
      if (manufacturerName == "Zhuhai Howbest Label Printer Co.,Ltd.") {
        return PrinterBrand.gpC200IV;
      }
      // GP-C200IV: manufacturerName = "ZHU HAI HOWBEST Receipt Printer Co.,Ltd."
      else if (manufacturerName == "ZHU HAI HOWBEST Receipt Printer Co.,Ltd.") {
        return PrinterBrand.gpD300I;
      } else {
        return PrinterBrand.gpD300I;
      }
    }
    return PrinterBrand.unknown;
  }

  // 获取打印机品牌名称
  static String getPrinterBrandName(PrinterBrand brand) {
    switch (brand) {
      case PrinterBrand.xpN160II:
        return 'XP-N160II';
      case PrinterBrand.xpN160IIV2:
        return 'XP-N160II V2';
      case PrinterBrand.gpD300I:
        return 'GP-D300I';
      case PrinterBrand.gpC200IV:
        return 'GP-C200IV';
      case PrinterBrand.sppos887e:
        return 'SP-POS887E';
      case PrinterBrand.unknown:
        return 'unknown';
    }
  }

  List<ReqUsbPrinterData> usbPrinterData = [];

  String usbConnectPort = '';

  Future<void> getUsbDevice() async {
    if (kIsWeb || !Platform.isAndroid) {
      return;
    }

    List<UsbDevice> devices = await UsbSerial.listDevices();
    logger.info('找到 ${devices.length} 个 USB 设备');

    if (devices.isEmpty) {
      reportUsbPrinterData.call(data: []);
    } else {
      devices = devices.where((device) {
        if (device.serial == null) return false;

        // 检查是否是支持的打印机型号
        final brand = getPrinterBrand(device.vid, device.pid, device.manufacturerName);
        return brand != PrinterBrand.unknown;
      }).toList();

      usbPrinterData = devices.map((device) {
        return ReqUsbPrinterData(
          mName: device.manufacturerName,
          name:
              '${getPrinterBrandName(getPrinterBrand(device.vid, device.pid, device.manufacturerName))}_${device.serial}',
          pid: device.pid,
          sn: device.serial,
          vid: device.vid,
          usbPort: device.deviceName,
        );
      }).toList();
      reportUsbPrinterData.call(data: usbPrinterData);
    }

    for (var device in devices) {
      logger.info('''
设备信息:
- 设备名称: ${device.deviceName}
- 设备ID: ${device.deviceId}
- 设备制造商: ${device.manufacturerName}
- 设备产品名称: ${device.productName}
- 设备产品ID: ${device.pid}
- 设备供应商ID: ${device.vid}
- 设备序列号: ${device.serial}
''');
    }
  }

  // 判断设备是否已适配
  static bool isSupportedPrinter(int? vendorId, int? productId) {
    if (vendorId == null || productId == null) {
      return false;
    }
    // 芯烨 XP-N160II: vid=1155, pid=22339
    if (vendorId == 1155 && productId == 22339) {
      return true;
    }
    // 芯烨 XP-N160II V2: vid=8137, pid=8214
    else if (vendorId == 8137 && productId == 8214) {
      return true;
    }
    // 佳博打印机
    else if (vendorId == 1137 && productId == 85) {
      return true;
    }
    // 思普瑞特 SP-POS887E: vid=1155, pid=22304
    else if (vendorId == 1155 && productId == 22304) {
      return true;
    }
    return false;
  }

  void initUsbPrinterChannel() {
    usbConnectChannel.setMethodCallHandler((MethodCall call) async {
      switch (call.method) {
        case 'onUsbDetached':
          // 处理USB设备断开事件
          final Map<dynamic, dynamic> deviceMap = call.arguments;
          final vendorId = deviceMap['vendorId'] as int?;
          final productId = deviceMap['productId'] as int?;

          if (isSupportedPrinter(vendorId, productId)) {
            if (isUsbListening) DialogManager.showToast('USB打印机断开连接，请检查或重新设置打印机'.tr);
            getUsbDevice();
          }
          return null;

        case 'onUsbAttached':
          // 处理USB设备连接事件
          final Map<dynamic, dynamic> deviceMap = call.arguments;
          final vendorId = deviceMap['vendorId'] as int?;
          final productId = deviceMap['productId'] as int?;
          try {
            final bool isLoggedIn = isUsbListening;
            if (isLoggedIn) {
              if (isSupportedPrinter(vendorId, productId)) {
                if (isUsbListening) DialogManager.showToast('检测到USB打印机，打印机信息已至商家后台'.tr);
                getUsbDevice();
              } else {
                if (isUsbListening) DialogManager.showToast('暂不支持此打印机型号'.tr);
              }
            }
            return isLoggedIn;
          } catch (error, stackTrace) {
            logger.warning('检查登录状态失败: $error\n$stackTrace');
            return false;
          }

        case 'onConnected':
          final String connectPort = call.arguments;
          usbConnectPort = connectPort;
          return null;

        default:
          throw PlatformException(
            code: 'Unimplemented',
            details: '未实现的方法: ${call.method}',
          );
      }
    });
  }

  // 检查登录状态的方法
  Future<bool> checkLoginStatus() async {
    try {
      return true; // 临时返回 true，需要替换为实际的检查逻辑
    } catch (error, stackTrace) {
      logger.warning('检查登录状态失败: $error\n$stackTrace');
      return false;
    }
  }

  Future<bool> connectUsbDevice(String sn) async {
    if (Platform.isAndroid) {
      logger.info('要连接的sn${sn}');
      logger.info('usbConnectPort${usbConnectPort}');
      logger.info('usbPrinterData${usbPrinterData}');
      // logger.info('getSerialFromUSBPort${getSerialFromUSBPort(usbConnectPort)}');
      try {
        logger.info('hasUsbPrinter(sn) == ' '${hasUsbPrinter(sn)}');
        if (!hasUsbPrinter(sn)) {
          logger.info('连接失败，sn不存在');
          return false;
        }

        if (usbConnectPort == '' && hasUsbPrinter(sn)) {
          final usbPort = usbPrinterData.firstWhere((element) => element.sn == sn).usbPort;
          logger.info('连接usb设备11${usbPort}');
          usbConnectChannel.invokeMethod('connect', usbPort);
          await Future.delayed(const Duration(milliseconds: 300));
          return true;
        }
        if (usbConnectPort != '' &&
            hasUsbPrinter(sn) &&
            usbConnectPort != usbPrinterData.firstWhere((element) => element.sn == sn).usbPort) {
          final usbPort = usbPrinterData.firstWhere((element) => element.sn == sn).usbPort;
          logger.info('连接usb设备22${usbPort}');
          usbConnectChannel.invokeMethod('connect', usbPort);
          await Future.delayed(const Duration(milliseconds: 300));
          return true;
        }
        return true;
      } catch (error, stackTrace) {
        logger.warning('参数错误 [PrintController], error: $error,\nstackTrace: $stackTrace');
        return false;
      }
    }
    return false;
  }

  String getSerialFromUSBPort(String portName) {
    final device = usbPrinterData.firstWhere(
      (device) => device.usbPort == portName,
    );
    return device.sn ?? '';
  }

  String? serialIsUSBList(String sn) {
    final device = usbPrinterData.firstWhere((element) => element.sn == sn);
    return device.usbPort;
  }

  bool isUsbPrinter(String sn) {
    final device = usbPrinterData.firstWhere((element) => element.sn == sn);
    return device.usbPort != null;
  }

  bool hasUsbPrinter(String sn) {
    try {
      usbPrinterData.firstWhere((element) => element.sn == sn);
      return true;
    } catch (e) {
      return false;
    }
  }
}
