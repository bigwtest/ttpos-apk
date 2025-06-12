part of '../main_controller.dart';

mixin BaseInfoKitchen on GetxController {
  Rx<BaseInfo?> get data;

  Kitchen? get kitchen => data.value?.kitchen;

  /// 是否开启
  bool get isOpen => kitchen?.isOpen.toSafetyInt() == 1;

  /// 是否开启呼叫服务
  bool get isCallService => kitchen?.isCallService.toSafetyInt() == 1;

  /// 是否开启叫号
  bool get isComeDish => kitchen?.isComeDish.toSafetyInt() == 1;

  /// 是否开启等待颜色
  bool get isWaitColor => kitchen?.isWaitColor.toSafetyInt() == 1;

  /// 等待颜色
  List<String> get waitColor => kitchen?.waitColor ?? [];

  Color get waitColorLeft10minColor => isWaitColor && waitColor.isNotEmpty
      ? (waitColor.first == 'red' ? CustomTheme.errorColor.shade500 : CustomTheme.primaryColor.shade700)
      : CustomTheme.secondaryColor.shade500;

  Color get waitColorLeft20minColor => isWaitColor && waitColor.isNotEmpty
      ? (waitColor.last == 'red' ? CustomTheme.errorColor.shade500 : CustomTheme.primaryColor.shade700)
      : CustomTheme.secondaryColor.shade500;

  void _updateLanguage() {
    final languageList = data.value?.kitchen.languageList;
    final defaultLanguage = data.value?.kitchen.defaultLanguage;

    if (!Get.isRegistered<LanguageController>()) return;

    LanguageController languageController = Get.find<LanguageController>();
    if (defaultLanguage != null && defaultLanguage.isNotEmpty) {
      languageController.languageDefault = defaultLanguage;
    }

    if (languageList != null && languageList.isNotEmpty) {
      languageController.languageList = languageList;
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
      },
    );
  }
}
