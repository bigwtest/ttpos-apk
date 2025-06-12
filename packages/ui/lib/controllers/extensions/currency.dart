part of 'package:ttpos_ui/controllers/config_controller.dart';

extension SafetyNumberCurrencyExtension on SafetyNumber {
  String get primaryCurrency {
    try {
      if (Get.isRegistered<ConfigController>()) {
        final ConfigController configController = Get.find<ConfigController>();

        bool isPrimaryCurrencyEnabled = true;

        String primaryCurrency = configController.currency.unit;
        bool isPrimaryCurrencyPrefix = int.tryParse(configController.currency.unitPosition) == 0;

        if (isPrimaryCurrencyEnabled) {
          // 先转为数字
          double primaryCurrencyNumber = toSafetyDouble();
          // 判断是否负数
          bool isNegative = primaryCurrencyNumber < 0;
          // 保持原始字符串格式
          final formatter = NumberFormat('#,##0.##');
          String numberString =
              formatter.format(primaryCurrencyNumber).replaceAll(RegExp(r'\.0+$'), '').replaceAll(RegExp(r'^-'), '');

          String primaryCurrencyString =
              isPrimaryCurrencyPrefix ? '$primaryCurrency\u00A0$numberString' : '$numberString\u00A0$primaryCurrency';

          return isNegative ? "-$primaryCurrencyString" : primaryCurrencyString;
        }
      }
      throw Exception('ConfigController not found');
    } catch (error, stackTrace) {
      debugPrint("primaryCurrency error: [$this], $error\n$stackTrace");
      return toSafetyString();
    }
  }

  String get secondaryCurrency {
    try {
      if (Get.isRegistered<ConfigController>()) {
        final ConfigController configController = Get.find<ConfigController>();

        bool isSecondaryCurrencyEnabled = int.tryParse(configController.currency.isOpen) == 1;
        String secondaryCurrency = configController.currency.viceUnit;
        bool isSecondaryCurrencyPrefix = int.tryParse(configController.currency.viceUnitPosition) == 0;
        double secondaryCurrencyRate = double.tryParse(configController.currency.unitRate) ?? 1;

        if (isSecondaryCurrencyEnabled) {
          // 先转为数字
          double secondaryCurrencyNumber = toSafetyDouble();

          double secondaryCurrencyNumberWithRate = secondaryCurrencyNumber * secondaryCurrencyRate;
          // 判断是否负数
          bool isNegative = secondaryCurrencyNumberWithRate < 0;
          // 保持原始字符串格式
          final formatter = NumberFormat('#,##0.##');
          String numberString = formatter
              .format(secondaryCurrencyNumberWithRate)
              .replaceAll(RegExp(r'\.0+$'), '')
              .replaceAll(RegExp(r'^-'), '');

          String secondaryCurrencyString = isSecondaryCurrencyPrefix
              ? '$secondaryCurrency\u00A0$numberString'
              : '$numberString\u00A0$secondaryCurrency';

          return isNegative ? "-$secondaryCurrencyString" : secondaryCurrencyString;
        }
        // NOTE: 如果次级货币未开启，则返回空字符串
        return "";
      }
      throw Exception('ConfigController not found');
    } catch (error, stackTrace) {
      debugPrint("secondaryCurrency error: [$this], $error\n$stackTrace");
      return toSafetyString();
    }
  }
}

extension StringCurrencyExtension on String {
  String get primaryCurrency {
    return SafetyNumber.string(this).primaryCurrency;
  }

  String get secondaryCurrency {
    return SafetyNumber.string(this).secondaryCurrency;
  }
}

extension DoubleCurrencyExtension on double {
  String get primaryCurrency {
    return SafetyNumber.double(this).primaryCurrency;
  }

  String get secondaryCurrency {
    return SafetyNumber.double(this).secondaryCurrency;
  }
}

extension IntCurrencyExtension on int {
  String get primaryCurrency {
    return SafetyNumber.int(this).primaryCurrency;
  }

  String get secondaryCurrency {
    return SafetyNumber.int(this).secondaryCurrency;
  }
}
