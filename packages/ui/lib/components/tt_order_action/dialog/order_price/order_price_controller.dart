import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';

class OrderPriceController extends GetxController {
  final String? initPrice;
  Future<bool> Function(double data)? fetchConfirm;
  OrderPriceController({
    this.initPrice,
    this.fetchConfirm,
  });
  // 价格
  final RxString _price = ''.obs;
  String get price => _price.value;
  set price(String value) {
    if (_price.value == value) {
      return;
    }
    _price.value = value;
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  @override
  void onInit() async {
    //
    price = initPrice?.toCleanString ?? '';
    //
    super.onInit();
  }

  // 点击按钮
  void handleConfirm() async {
    if (_isLoading.value) {
      return;
    }
    // 判断
    final data = price.trim();
    if (data.isEmpty) {
      DialogManager.showToast('请输入价格'.tr);
      return;
    }
    try {
      _isLoading.value = true;
      final res = await fetchConfirm?.call(double.tryParse(data) ?? 0);
      if (res == null || !res) return;
      Get.back();
    } finally {
      _isLoading.value = false;
    }
  }
}
