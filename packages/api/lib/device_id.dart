part of 'controller.dart';

class DeviceId {
  static const _platform = MethodChannel('deviceid.channel');
  static const _storageKey = 'DEVICE_ID';
  static String? _deviceId;

  static Future<String> getId() async {
    if (_deviceId != null && _deviceId?.isNotEmpty == true) return _deviceId!;

    if (kIsWeb) {
      return await _getWebDeviceId();
    }

    final secureStorage = Platform.isAndroid
        ? FlutterSecureStorage(aOptions: const AndroidOptions(encryptedSharedPreferences: true))
        : FlutterSecureStorage();

    final deviceIdInStorage = await secureStorage.read(key: _storageKey);
    if (deviceIdInStorage != null) {
      _deviceId = deviceIdInStorage;
      return _deviceId!;
    }

    final md5String = Platform.isAndroid ? await _getAndroidDeviceId() : await _getDeviceIdByUuid();

    if (Platform.isAndroid) {
      await secureStorage.write(
        key: _storageKey,
        value: md5String,
      );
    } else if (Platform.isIOS) {
      await secureStorage.write(
        key: _storageKey,
        value: md5String,
        iOptions: const IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );
    } else if (Platform.isMacOS) {
      await secureStorage.write(
        key: _storageKey,
        value: md5String,
      );
    } else if (Platform.isWindows) {
      await secureStorage.write(
        key: _storageKey,
        value: md5String,
      );
    } else {
      // NOTE: 其他平台暂时不考虑怎么实现
    }

    _deviceId = md5String;

    debugPrint('deviceId: $_deviceId');
    return _deviceId!;
  }

  static Future<String> _getAndroidDeviceId() async {
    String? result;
    try {
      result = await _platform.invokeMethod<String>('deviceID');
      if (result == null || result.isEmpty) throw Exception('result is null or empty');
      return await _covertToMd5(result);
    } catch (error, stackTrace) {
      debugPrint("Failed to get native string: $error");
      debugPrintStack(stackTrace: stackTrace);
      return await _getDeviceIdByUuid();
    }
  }

  static Future<String> _getWebDeviceId() async {
    final storage = await SharedPreferencesWithCache.create(cacheOptions: SharedPreferencesWithCacheOptions());
    final String? deviceIdInStorage = storage.getString(_storageKey);
    if (deviceIdInStorage != null && deviceIdInStorage.isNotEmpty) {
      _deviceId = deviceIdInStorage;
      return _deviceId!;
    }

    final deviceId = await _getDeviceIdByUuid();
    await storage.setString(_storageKey, deviceId);
    return deviceId;
  }

  static Future<String> _getUuid() async {
    final uuid = Uuid();
    return uuid.v4();
  }

  static Future<String> _getDeviceIdByUuid() async {
    final uuid = await _getUuid();
    return _covertToMd5(uuid);
  }

  static Future<String> _covertToMd5(String value) async {
    final bytes = utf8.encoder.convert(value);
    final md5String = md5.convert(bytes).toString();
    return md5String;
  }
}
