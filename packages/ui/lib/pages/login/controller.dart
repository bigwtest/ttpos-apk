import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/select_overlay.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';
import 'package:ttpos_ui/pages/login/api.dart';
import 'package:ttpos_ui/pages/login/encrypt.dart';
import 'package:ttpos_ui/pages/login/model.dart';

class UILoginController extends GetxController {
  late final SharedPreferencesWithCache _storage;
  final Log _logger = Log(appName: 'UILoginController');
  Logger get logger => _logger.logger;

  final RxString _username = ''.obs;
  String get username => _username.value;

  final RxString _password = ''.obs;
  String get password => _password.value;

  final RxString _captcha = ''.obs;
  String get captcha => _captcha.value;

  final RxString _captchaImage = ''.obs;
  String get captchaImage => _captchaImage.value;
  final RxBool _isCaptchaLoading = false.obs;
  bool get isCaptchaLoading => _isCaptchaLoading.value;

  final RxString _captchaSign = ''.obs;
  String get captchaSign => _captchaSign.value;

  final RxBool _rememberPassword = false.obs;
  bool get rememberPassword => _rememberPassword.value;

  bool get isSubmittable =>
      _username.value.isNotEmpty &&
      _password.value.isNotEmpty &&
      _captchaSign.value.isNotEmpty &&
      _captcha.value.isNotEmpty;

  final RxList<SavedUser> savedUsers = <SavedUser>[].obs;
  bool get hasSavedUsers => savedUsers.isNotEmpty;
  List<SavedUser> get decodedSavedUsers => savedUsers
      .map(
        (e) => SavedUser(
          username: UILoginEncrypt.decrypt(e.username),
          password: UILoginEncrypt.decrypt(e.password),
        ),
      )
      .toList();
  // 根据输入框的值进行筛选
  String get searchText => _username.value.toLowerCase();
  List<SavedUser> get filterUserList =>
      decodedSavedUsers.where((user) => (user.username.toLowerCase()).contains(searchText)).toList();

  List<SelectOption> get options =>
      filterUserList.map((user) => SelectOption(title: user.username, subtitle: '•' * 6, obscureText: true)).toList();

  final RxBool isSubmitting = false.obs;

  Timer? _captchaTimer;

  @override
  void onInit() async {
    super.onInit();

    _storage = await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(
        allowList: {
          StorageKey.authSavedUsers.asString,
        },
      ),
    );

    getSavedUsers();
    getCaptcha();

    _startCaptchaTimer();
  }

  @override
  void onReady() {
    super.onReady();

    if (Get.isRegistered<LanguageController>()) {
      Get.find<LanguageController>().initLanguageList();
    }

    SubScreenService.resetCarouselData();
  }

  @override
  void onClose() {
    _stopCaptchaTimer();
    super.onClose();
  }

  void _startCaptchaTimer() {
    _stopCaptchaTimer();
    _captchaTimer = Timer.periodic(
      const Duration(minutes: 1),
      (timer) {
        logger.info('获取验证码 ${timer.tick}次');
        getCaptcha();
      },
    );
  }

  void _stopCaptchaTimer() {
    _captchaTimer?.cancel();
    _captchaTimer = null;
  }

  void onUsernameChanged(String? value) {
    _username.value = value ?? '';
  }

  void onPasswordChanged(String? value) {
    _password.value = value ?? '';
  }

  void onCaptchaChanged(String? value) {
    _captcha.value = value ?? '';
  }

  void onRememberPasswordChanged(bool value) {
    _rememberPassword.value = value;
  }

  Future<void> getSavedUsers() async {
    try {
      final result = _storage.getStringList(StorageKey.authSavedUsers.asString);
      if (result == null) return;

      savedUsers.value = result.map(
        (e) {
          final json = jsonDecode(e);
          return SavedUser(
            username: json['username'],
            password: json['password'],
          );
        },
      ).toList();
    } catch (error, stackTrace) {
      logger.severe('获取保存的用户列表失败:', error, stackTrace);
    }
  }

  Future<void> setSavedUser() async {
    int existingIndex = decodedSavedUsers.indexWhere((user) => user.username == username);

    final currentUser = SavedUser(
      username: UILoginEncrypt.encrypt(username),
      password: UILoginEncrypt.encrypt(password),
    );

    if (existingIndex != -1) {
      savedUsers[existingIndex] = currentUser;
    } else {
      if (savedUsers.length >= 50) {
        savedUsers.removeAt(0);
      }
      savedUsers.add(currentUser);
    }

    await _storage.setStringList(
      StorageKey.authSavedUsers.asString,
      savedUsers.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  Future<void> removeSavedUser(String? username) async {
    if (username == null) return;

    savedUsers.removeWhere((user) => user.username == UILoginEncrypt.encrypt(username));
    await _storage.setStringList(
      StorageKey.authSavedUsers.asString,
      savedUsers.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  Future<void> onSubmit({Future<bool> Function(LoginForm)? onSubmit}) async {
    try {
      final form = LoginForm(
        username: _username.value,
        password: _password.value,
        rememberPassword: _rememberPassword.value,
        captcha: _captcha.value,
        captchaSign: _captchaSign.value,
      );

      /// 停止验证码定时器
      _stopCaptchaTimer();

      /// 设置提交状态
      isSubmitting.value = true;

      /// 提交
      final result = await onSubmit?.call(form);

      /// 如果提交失败，重新获取验证码
      if (result == false) {
        getCaptcha();
        _startCaptchaTimer();
        return;
      }

      /// 如果记住密码，保存用户
      if (_rememberPassword.value) {
        await setSavedUser();
      }

      /// 重置表单
      reset();
    } catch (error, stackTrace) {
      logger.severe('登录失败', error, stackTrace);
    } finally {
      isSubmitting.value = false;
    }
  }

  void reset() {
    _username.value = '';
    _password.value = '';
    _captchaImage.value = '';
    _captchaSign.value = '';
    _rememberPassword.value = false;
  }

  Future<void> getCaptcha() async {
    if (_isCaptchaLoading.value) return;

    try {
      _isCaptchaLoading.value = true;
      final result = await AuthAPI().getCaptcha();
      if (result == null) return;

      _captchaImage.value = result.base64;
      _captchaSign.value = result.sign;
    } catch (error, stackTrace) {
      logger.severe('获取验证码失败:', error, stackTrace);
    } finally {
      _isCaptchaLoading.value = false;
    }
  }

  void showUserSelector(BuildContext context, GlobalKey inputFieldKey) {
    final RenderBox? inputBox = inputFieldKey.currentContext?.findRenderObject() as RenderBox?;
    if (inputBox == null) return;

    final offset = inputBox.localToGlobal(Offset.zero);
    final size = inputBox.size;

    // 创建一个ValueNotifier来监听位置变化
    final ValueNotifier<Offset> offsetNotifier = ValueNotifier<Offset>(offset);

    // 添加MediaQuery监听器
    void updateOverlayPosition() {
      // 使用microtask确保在布局完成后更新位置
      Future.microtask(() {
        // 添加延迟，确保UI完全渲染
        Future.delayed(Duration(milliseconds: 100), () {
          if (inputFieldKey.currentContext != null) {
            final RenderBox box = inputFieldKey.currentContext!.findRenderObject() as RenderBox;
            offsetNotifier.value = box.localToGlobal(Offset.zero);
          }
        });
      });
    }

    // 创建一个监听器
    final WidgetsBinding binding = WidgetsBinding.instance;
    final observer = _MediaQueryObserver(updateOverlayPosition);
    binding.addObserver(observer);

    // 确保在对话框关闭时清理监听器
    void cleanupObserver() {
      binding.removeObserver(observer);
      offsetNotifier.dispose();
    }

    Get.dialog(
      ValueListenableBuilder<Offset>(
        valueListenable: offsetNotifier,
        builder: (context, currentOffset, child) {
          return SelectOverlay(
            offset: currentOffset,
            size: size,
            width: size.width - 48.0,
            options: options,
            position: OverlayPosition.bottom,
            onItemSelected: (selectedOption) {
              final userData = decodedSavedUsers.firstWhereOrNull(
                (user) => user.username == selectedOption.title,
              );
              if (userData == null) return;

              _username.value = userData.username;
              _password.value = userData.password;

              Get.back();
            },
            onTapOutside: () => Get.back(),
            onDelete: (option) => removeSavedUser(option.title),
            emptyText: '没有找到匹配的账号',
          );
        },
      ),
      barrierColor: Colors.transparent,
    ).whenComplete(cleanupObserver); // 使用 whenComplete 确保在对话框关闭时清理监听器
  }
}

// 创建一个MediaQuery观察者
class _MediaQueryObserver extends WidgetsBindingObserver {
  final VoidCallback onMetricsChanged;

  _MediaQueryObserver(this.onMetricsChanged);

  @override
  void didChangeMetrics() {
    onMetricsChanged();
  }
}
