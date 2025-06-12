import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class OrderPasswordController extends GetxController {
  final String? hintText;
  Future<bool> Function(String data)? fetchConfirm;
  OrderPasswordController({
    this.hintText,
    this.fetchConfirm,
  });
  // 密码
  final RxString _password = ''.obs;
  String get password => _password.value;
  set password(String value) {
    if (_password.value == value) {
      return;
    }
    _password.value = value;
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // 点击按钮
  void handleConfirm() async {
    if (_isLoading.value) {
      return;
    }
    // 判断
    final data = password.trim();
    if (data.isEmpty) {
      DialogManager.showToast(hintText ?? '请输入密码'.tr);
      return;
    }
    try {
      _isLoading.value = true;
      final res = await fetchConfirm?.call(data);
      if (res == null || !res) {
        password = '';
        return;
      }
      Get.back();
    } finally {
      _isLoading.value = false;
    }
  }
}
