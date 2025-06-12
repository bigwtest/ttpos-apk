import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class DeskCancelController extends GetxController {
  Future<bool> Function(String data)? fetchConfirm;
  DeskCancelController({
    this.fetchConfirm,
  });
  // 整单取消、清台（清除桌台）原因
  final RxString _reason = ''.obs;
  String get reason => _reason.value;
  set reason(String value) {
    if (_reason.value == value) {
      return;
    }
    _reason.value = value;
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // 点击按钮
  void handleConfirm() async {
    if (_isLoading.value) {
      return;
    }
    final data = reason.trim();
    if (data.isEmpty) {
      DialogManager.showToast('请输入原因'.tr);
      return;
    }
    try {
      _isLoading.value = true;
      final res = await fetchConfirm?.call(data);
      if (res == null || !res) return;
      Get.back();
    } finally {
      _isLoading.value = false;
    }
  }
}
