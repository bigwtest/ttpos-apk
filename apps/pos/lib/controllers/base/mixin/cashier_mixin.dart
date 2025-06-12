part of '../main_controller.dart';

mixin BaseInfoCashier on GetxController {
  Rx<BaseInfo?> get data;

  Cashier? get cashier => data.value?.cashier;

  int get cashierUuid => data.value?.cashierUuid ?? 0;
  String get cashierUuidString => data.value?.cashierUuid.toString() ?? '';

  bool get isRemainBuffetCountdownColor => data.value?.cashier.isRemainColor == '1';
  Color get buffetCountdownLeft10minColor => isRemainBuffetCountdownColor
      ? (data.value?.cashier.remainColor.first == '#E50028'
          ? CustomTheme.errorColor.shade500
          : CustomTheme.primaryColor.shade700)
      : CustomTheme.secondaryColor.shade500;
  Color get buffetCountdownLeft20minColor => isRemainBuffetCountdownColor
      ? (data.value?.cashier.remainColor.last == '#E50028'
          ? CustomTheme.errorColor.shade500
          : CustomTheme.primaryColor.shade700)
      : CustomTheme.secondaryColor.shade500;

  bool get isOpenCashBoxNeedPassword => data.value?.cashier.isOpenCashierPassword == '1';

  Future<void> openCashBox() async {
    if (isOpenCashBoxNeedPassword) {
      await DialogManager.showPasswordDialog(
        title: '钱箱密码'.tr,
        hintText: '请输入钱箱密码'.tr,
        onConfirm: ({required String password}) async {
          final res = await AuthAPI().verifyCashBoxPassword(password: password);
          if (res) {
            CashBoxController.openCashBox();
          }
          return res;
        },
      );
    } else {
      CashBoxController.openCashBox();
    }
  }

  bool get isAutoLockScreen => int.tryParse(data.value?.cashier.isAutoLockScreen ?? '0') == 1;
  int get autoLockScreenDuration => int.tryParse(data.value?.cashier.autoLockScreen ?? '0') ?? 0;

  VoidCallback? turnOffDetectActivity;
  void Function({Duration? duration})? turnOnDetectActivity;

  void _updateLanguage() {
    final languageList = data.value?.cashier.languageList;
    final defaultLanguage = data.value?.cashier.defaultLanguage;

    if (!Get.isRegistered<LanguageController>()) return;

    LanguageController languageController = Get.find<LanguageController>();
    if (defaultLanguage != null && defaultLanguage.isNotEmpty) {
      languageController.languageDefault = defaultLanguage;
    }

    if (languageList != null && languageList.isNotEmpty) {
      languageController.languageList = languageList;
    }

    if (!Get.isRegistered<LanguageSecondController>()) return;
    LanguageSecondController languageSecondController = Get.find<LanguageSecondController>();
    if (defaultLanguage != null && defaultLanguage.isNotEmpty) {
      languageSecondController.saveSecondLanguage(defaultLanguage);
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
