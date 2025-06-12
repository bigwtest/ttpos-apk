part of '../main_controller.dart';

mixin BaseInfoAssistant on GetxController {
  Rx<BaseInfo?> get data;

  Assistant? get assistant => data.value?.assistant;

  bool get isRemainBuffetCountdownColor => data.value?.assistant.isRemainColor.toSafetyInt() == 1;
  Color get buffetCountdownLeft10minColor => isRemainBuffetCountdownColor
      ? (data.value?.assistant.remainColor.first == '#E50028'
          ? CustomTheme.errorColor.shade500
          : CustomTheme.primaryColor.shade700)
      : CustomTheme.secondaryColor.shade500;
  Color get buffetCountdownLeft20minColor => isRemainBuffetCountdownColor
      ? (data.value?.assistant.remainColor.last == '#E50028'
          ? CustomTheme.errorColor.shade500
          : CustomTheme.primaryColor.shade700)
      : CustomTheme.secondaryColor.shade500;

  /// 是否显示已售罄商品
  bool get isSoldOutProductVisible => data.value?.assistant.isShowAssistantSoldOut.toSafetyInt() == 1;

  bool get isAutoLockScreen => data.value?.assistant.isAutoLockScreen.toSafetyInt() == 1;
  int get autoLockScreenDuration => data.value?.assistant.autoLockScreen.toSafetyInt() ?? 0;

  VoidCallback? turnOffDetectActivity;
  void Function({Duration? duration})? turnOnDetectActivity;

  /// 是否提示订单密码
  bool get isCheckOrder => data.value?.assistant.isCheckOrder?.toSafetyInt() == 1;

  void _updateLanguage() {
    final languageList = data.value?.assistant.languageList;
    final defaultLanguage = data.value?.assistant.defaultLanguage;

    if (!Get.isRegistered<LanguageController>()) return;

    LanguageController languageController = Get.find<LanguageController>();
    if (defaultLanguage != null && defaultLanguage.isNotEmpty) {
      languageController.languageDefault = defaultLanguage;
    }

    if (languageList != null && languageList.isNotEmpty) {
      languageController.languageList = languageList;
    }
  }

  void _updateAutoLockScreen() {
    if (isAutoLockScreen && autoLockScreenDuration > 0) {
      turnOnDetectActivity?.call(duration: Duration(seconds: autoLockScreenDuration));
    } else {
      turnOffDetectActivity?.call();
    }
  }

  @override
  void onInit() {
    super.onInit();

    ever(
      data,
      (value) {
        if (value == null) return;

        _updateLanguage();
        _updateAutoLockScreen();
      },
    );
  }
}
