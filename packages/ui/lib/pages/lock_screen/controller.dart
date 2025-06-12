import 'package:get/get.dart';
import 'package:ttpos_logger/logger.dart';

class UILockScreenController extends GetxController {
  final Log _logger = Log(appName: 'UILockScreenController');
  Logger get logger => _logger.logger;

  final RxString _password = "".obs;
  String get password => _password.value;
  bool get isSubmittable => _password.value.isNotEmpty;

  final RxBool _isSubmitting = false.obs;
  bool get isSubmitting => _isSubmitting.value;

  void onPasswordChanged(String? value) {
    _password.value = value ?? '';
  }

  void onNumberTap(String value) {
    _password.value += value;
  }

  void onClearTap() {
    _password.value = "";
  }

  Future<void> onSubmit({Future<bool> Function(String password)? onSubmit}) async {
    try {
      _isSubmitting.value = true;
      await onSubmit?.call(_password.value);
    } catch (error, stackTrace) {
      logger.severe('登录失败', error, stackTrace);
    } finally {
      _isSubmitting.value = false;
      onClearTap();
    }
  }

  @override
  void onClose() {
    _password.value = "";
    _isSubmitting.value = false;
    super.onClose();
  }
}
