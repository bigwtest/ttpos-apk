part of '../main_controller.dart';

mixin BaseInfoTablet on GetxController {
  Rx<BaseInfo?> get data;

  Tablet? get tablet => data.value?.tablet;

  List<Carousel> get carousel => tablet?.carousel ?? [];

  /// 是否开启自助餐点餐限制
  bool get isBuffetOrderLimit => tablet?.isBuffetOrderLimit.toSafetyInt() == 1;

  /// 是否开启非自助餐点餐限制
  bool get isOrderLimit => tablet?.isOrderLimit.toSafetyInt() == 1;

  /// 是否开启呼叫服务
  bool get isCallService => tablet?.isCallService.toSafetyInt() == 1;

  /// 是否开启顾客开桌
  bool get isCustomerOrder => tablet?.isCustomerOrder.toSafetyInt() == 1;

  /// 是否显示售罄
  bool get isSoldOutProductVisible => tablet?.isShowSoldOut.toSafetyInt() == 1;

  /// 是否开启语音提醒
  bool get isVoiceRemind => tablet?.isVoiceRemind.toSafetyInt() == 1;

  /// 自助餐点餐限制
  OrderLimit? get buffetOrderLimit => tablet?.buffetOrderLimit;

  /// 非自助餐点餐限制
  OrderLimit? get orderLimit => tablet?.orderLimit;

  void _updateLanguage() {
    final languageList = data.value?.tablet.languageList;
    final defaultLanguage = data.value?.tablet.defaultLanguage;

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
