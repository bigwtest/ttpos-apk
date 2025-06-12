import 'package:get/get.dart';

class OrderRemarkController extends GetxController {
  final String? initRemark;
  Future<bool> Function(String data)? fetchConfirm;
  OrderRemarkController({
    this.initRemark,
    this.fetchConfirm,
  });
  // 备注
  final RxString _remark = ''.obs;
  String get remark => _remark.value;
  set remark(String value) {
    if (_remark.value == value) {
      return;
    }
    _remark.value = value;
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  @override
  void onInit() async {
    //
    remark = initRemark ?? '';
    //
    super.onInit();
  }

  // 点击按钮
  void handleConfirm() async {
    if (_isLoading.value) {
      return;
    }
    //
    final data = remark.trim();
    // if (data.isEmpty) {
    //   DialogManager.showToast('请输入备注'.tr);
    //   return;
    // }
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
