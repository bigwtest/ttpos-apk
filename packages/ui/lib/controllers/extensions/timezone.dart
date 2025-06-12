part of 'package:ttpos_ui/controllers/config_controller.dart';

extension TimeZoneExtension on int {
  String get tz {
    try {
      if (Get.isRegistered<ConfigController>()) {
        final ConfigController companyController = Get.find<ConfigController>();

        final utcTime = DateTime.fromMillisecondsSinceEpoch(
          this * 1000,
          isUtc: true,
        );

        bool isValidatedTimeZone = shared.SupportedTimeZone.fromName(
              companyController.companyTimeZone,
            ) !=
            shared.SupportedTimeZone.tzUnknown;
        if (!isValidatedTimeZone) return utcTime.toLocal().toString().split('.').first;

        return shared.TZDateTime.from(
          utcTime,
          shared.getLocation(companyController.companyTimeZone),
        ).toString().split('.').first;
      }
      throw Exception('ConfigController not found');
    } catch (error, stackTrace) {
      debugPrint("tz error: [$this], $error\n$stackTrace");
      return toString();
    }
  }

  String get tzFull {
    try {
      if (Get.isRegistered<ConfigController>()) {
        final ConfigController companyController = Get.find<ConfigController>();

        final utcTime = DateTime.fromMillisecondsSinceEpoch(
          this * 1000,
          isUtc: true,
        );

        bool isValidatedTimeZone = shared.SupportedTimeZone.fromName(
              companyController.companyTimeZone,
            ) !=
            shared.SupportedTimeZone.tzUnknown;
        if (!isValidatedTimeZone) return utcTime.toLocal().toString();

        return shared.TZDateTime.from(
          utcTime,
          shared.getLocation(companyController.companyTimeZone),
        ).toString();
      }
      throw Exception('ConfigController not found');
    } catch (error, stackTrace) {
      debugPrint("tzFull error: [$this], $error\n$stackTrace");
      return toString();
    }
  }
}
