part of '../main_controller.dart';

mixin BaseInfoH5 on GetxController {
  Rx<BaseInfo?> get data;

  H5? get h5 => data.value?.h5;

  /// 是否开启自助餐点餐限制
  bool get isBuffetOrderLimit => h5?.isBuffetOrderLimit.toSafetyInt() == 1;

  /// 是否开启非自助餐点餐限制
  bool get isOrderLimit => h5?.isOrderLimit.toSafetyInt() == 1;

  /// 是否开启呼叫服务
  bool get isCallService => h5?.isCallService.toSafetyInt() == 1;

  /// 是否开启顾客开桌
  bool get isCustomerOrder => h5?.isCustomerOrder.toSafetyInt() == 1;

  /// 是否显示售罄
  bool get isSoldOutProductVisible => h5?.isShowSoldOut.toSafetyInt() == 1;

  /// 是否开启语音提醒
  bool get isVoiceRemind => h5?.isVoiceRemind.toSafetyInt() == 1;

  /// 自助餐点餐限制
  OrderLimit? get buffetOrderLimit => h5?.buffetOrderLimit;

  /// 非自助餐点餐限制
  OrderLimit? get orderLimit => h5?.orderLimit;

  void _updateLanguage() {
    final languageList = data.value?.h5.languageList;
    final defaultLanguage = data.value?.h5.defaultLanguage;

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
