part of 'controller.dart';

enum SupportedDeviceBrand {
  brandNotSupport('[NotSupport]', '不支持的设备品牌'),
  brandA11500('A1-1500', '不带打印机的 compax收银机器'),
  brandA11510P('A2-1510P', '自带打印机的 compax收银机器'),
  brandT2('T2', '自带打印机的 商米收银机器'),
  brandT2S('T2S', '自带打印机的 商米收银机器'),
  brandD2SPlus('D2S_Plus', '自带打印机的 商米收银机器'),
  brandT2MINIS('T2mini_s', '自带打印机的 商米小屏收银机器');

  const SupportedDeviceBrand(this.value, this.description);

  final String value;
  final String description;

  static bool isSupportedBrand(String targetBrand) {
    return SupportedDeviceBrand.values.any((element) => element.value.toLowerCase() == targetBrand.toLowerCase());
  }
}

class DeviceInfoUtils {
  static Future<String?> getBrand() async {
    try {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      if (kIsWeb) {
        return 'Web Browser';
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        return androidInfo.model;
      } else if (defaultTargetPlatform == TargetPlatform.iOS) {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        return iosInfo.model;
      } else if (defaultTargetPlatform == TargetPlatform.macOS) {
        MacOsDeviceInfo macOsInfo = await deviceInfo.macOsInfo;
        return macOsInfo.model;
      } else if (defaultTargetPlatform == TargetPlatform.windows) {
        WindowsDeviceInfo windowsInfo = await deviceInfo.windowsInfo;
        return windowsInfo.productName;
      } else {
        return null;
      }
    } catch (error, stackTrace) {
      debugPrint('获取品牌信息时出错: $error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  static Future<bool> isSupportedBrand() async {
    String? brand = await getBrand();
    if (brand == null) return false;
    return SupportedDeviceBrand.isSupportedBrand(brand);
  }

  static Future<bool> isCorrectBrand(SupportedDeviceBrand targetBrand) async {
    String? brand = await getBrand();
    if (brand == null) return false;
    return brand.toLowerCase() == targetBrand.value.toLowerCase();
  }

  static Future<String?> getSerialNumber() async {
    try {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      if (defaultTargetPlatform == TargetPlatform.android) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        return androidInfo.serialNumber;
      }
      return null;
    } catch (error, stackTrace) {
      debugPrint('获取序列号时出错: $error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }
}
