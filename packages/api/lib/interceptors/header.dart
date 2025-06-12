part of '../controller.dart';

class HeaderInterceptor extends Interceptor {
  String? _deviceId;
  String? _platform;
  String? _language;
  String? _brand;

  Future<String> get deviceId async {
    _deviceId ??= await DeviceId.getId();
    return _deviceId ?? '[UNKNOWN]';
  }

  Future<String> get platform async {
    _platform ??= kIsWeb ? 'web' : Platform.operatingSystem;
    return _platform ?? '[UNKNOWN]';
  }

  Future<String> get language async {
    if (getx.Get.isRegistered<LanguageController>()) {
      final languageCurrent = getx.Get.find<LanguageController>().languageCurrent;
      if (languageCurrent.isNotEmpty) {
        _language = languageCurrent;
      }
    }
    return _language ?? 'en';
  }

  Future<String> get brand async {
    _brand ??= await DeviceInfoUtils.getBrand();
    return _brand ?? '[UNKNOWN]';
  }

  Future<int?> get h5OrderUuid async {
    if (getx.Get.isRegistered<SharedPreferencesWithCache>()) {
      final storage = getx.Get.find<SharedPreferencesWithCache>();
      return storage.getInt(StorageKey.h5OrderUuid.asString);
    }
    return null;
  }

  String getTimeZoneFromOffset(Duration offset) {
    // 将偏移量转换为分钟，以处理非整点时区
    final int offsetMinutes = offset.inMinutes;

    // 使用 Map 存储所有时区偏移对应关系
    final Map<int, String> timeZoneMap = {
      // 负时区
      -720: 'Etc/GMT+12', // UTC-12:00
      -660: 'Etc/GMT+11', // UTC-11:00
      -600: 'Pacific/Honolulu', // UTC-10:00
      -570: 'Pacific/Marquesas', // UTC-09:30
      -540: 'America/Anchorage', // UTC-09:00
      -480: 'America/Los_Angeles', // UTC-08:00
      -420: 'America/Phoenix', // UTC-07:00
      -360: 'America/Chicago', // UTC-06:00
      -300: 'America/New_York', // UTC-05:00
      -240: 'America/Halifax', // UTC-04:00
      -210: 'America/St_Johns', // UTC-03:30
      -180: 'America/Sao_Paulo', // UTC-03:00
      -120: 'Etc/GMT+2', // UTC-02:00
      -60: 'Atlantic/Cape_Verde', // UTC-01:00

      // UTC
      0: 'Etc/UTC', // UTC±00:00

      // 正时区
      60: 'Europe/Paris', // UTC+01:00
      120: 'Africa/Cairo', // UTC+02:00
      180: 'Europe/Moscow', // UTC+03:00
      210: 'Asia/Tehran', // UTC+03:30
      240: 'Asia/Dubai', // UTC+04:00
      270: 'Asia/Kabul', // UTC+04:30
      300: 'Asia/Karachi', // UTC+05:00
      330: 'Asia/Kolkata', // UTC+05:30
      345: 'Asia/Kathmandu', // UTC+05:45
      360: 'Asia/Dhaka', // UTC+06:00
      390: 'Asia/Yangon', // UTC+06:30
      420: 'Asia/Bangkok', // UTC+07:00
      480: 'Asia/Shanghai', // UTC+08:00
      525: 'Australia/Eucla', // UTC+08:45
      540: 'Asia/Tokyo', // UTC+09:00
      570: 'Australia/Darwin', // UTC+09:30
      600: 'Australia/Brisbane', // UTC+10:00
      630: 'Australia/Lord_Howe', // UTC+10:30
      660: 'Asia/Vladivostok', // UTC+11:00
      720: 'Pacific/Fiji', // UTC+12:00
      765: 'Pacific/Chatham', // UTC+12:45
      780: 'Pacific/Apia', // UTC+13:00
      840: 'Pacific/Kiritimati', // UTC+14:00
    };

    // 尝试获取精确的时区
    final timeZone = timeZoneMap[offsetMinutes];
    if (timeZone != null) {
      return timeZone;
    }

    // 如果找不到精确匹配，返回最接近的时区
    // 这里我们可以实现一个找到最接近值的逻辑
    final closest = timeZoneMap.keys.reduce((a, b) {
      return (a - offsetMinutes).abs() < (b - offsetMinutes).abs() ? a : b;
    });

    if (kDebugMode) {
      print('未找到精确的时区匹配，使用最接近的时区: ${timeZoneMap[closest]}');
      print('实际偏移量: ${offset.inHours}:${offset.inMinutes % 60}');
      print('匹配到的时区偏移量: ${closest ~/ 60}:${closest % 60}');
    }

    return timeZoneMap[closest] ?? 'Etc/UTC';
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final Map<String, dynamic> originalHeaders = Map<String, dynamic>.from(
        options.headers,
      );

      final offset = DateTime.now().timeZoneOffset;
      final timeZone = getTimeZoneFromOffset(offset);

      options.headers = {
        'Accept-Language': await language,
        // 'Brand': await brand,
        'Device-Id': await deviceId,
        'Platform': await platform,
        'TZ': timeZone,
        ...originalHeaders,
      };

      // NOTE: 如果 h5OrderUuid 大于 0, 则添加到 headers @发哥
      final h5OrderUuid = await this.h5OrderUuid;
      if (h5OrderUuid != null && h5OrderUuid > 0) {
        options.headers['h5-order-uuid'] = h5OrderUuid.toString();
      }

      handler.next(options);
    } catch (error, stackTrace) {
      debugPrint('HeaderInterceptor onRequest Error: $error\n$stackTrace');
      handler.reject(
        DioException.badCertificate(
          requestOptions: options,
        ),
      );
    }
  }
}
