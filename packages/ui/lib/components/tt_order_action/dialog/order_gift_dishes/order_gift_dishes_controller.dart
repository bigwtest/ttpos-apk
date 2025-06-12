import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/reason/free_or_gift_reason.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_gift_dishes/order_gift_dishes_model.dart';

class OrderGiftDishesController extends GetxController {
  final Future<BaseList<ResponseFreeOrGiftReason>?> Function()? fetchReasons;
  Future<bool> Function(OrderGiftDishesViewModel data)? fetchConfirm;
  OrderGiftDishesController({
    this.fetchReasons,
    this.fetchConfirm,
  });
  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;
  // 赠菜原因
  final RxString _reason = ''.obs;
  String get reason => _reason.value;
  set reason(String value) {
    if (_reason.value == value) {
      return;
    }
    _reason.value = value;
  }

  // 赠菜原因ID
  final RxList<int> _giftIds = <int>[].obs;
  List<int> get giftIds => _giftIds.toList();
  // set giftIds(List<int> value) {
  //   // 检查两个列表是否相等
  //   bool areEqual = ListEquality<int>().equals(_giftIds, value);
  //   if (areEqual) return;
  //   giftIds.addAll(value);
  // }

  // 赠菜原因
  final RxList<ResponseFreeOrGiftReason> _reasonsList = <ResponseFreeOrGiftReason>[].obs;
  List<ResponseFreeOrGiftReason> get reasonsList => _reasonsList;
  set reasonsList(List<ResponseFreeOrGiftReason> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<ResponseFreeOrGiftReason>().equals(_reasonsList, value);
    if (areEqual) return;
    reasonsList.addAll(value);
    // 缓存
    _cachedReasonsList = value;
  }

  // 缓存列表
  static List<ResponseFreeOrGiftReason> _cachedReasonsList = [];

  @override
  void onInit() async {
    // 如果有缓存数据，直接使用
    if (_cachedReasonsList.isNotEmpty) {
      reasonsList = _cachedReasonsList;
    }
    //
    loadReasonsList();
    //
    super.onInit();
  }

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // 点击按钮
  void handleConfirm() async {
    if (_isLoading.value) {
      return;
    }
    //
    if (reasonsList.isNotEmpty) {
      if (giftIds.isEmpty && reason.isEmpty) {
        DialogManager.showToast('请选择或者填写赠菜原因'.tr);
        return;
      }
    } else {
      if (reason.isEmpty) {
        DialogManager.showToast('请输入赠菜原因'.tr);
        return;
      }
    }
    try {
      _isLoading.value = true;
      final res = await fetchConfirm?.call(
        OrderGiftDishesViewModel(
          giftIds: giftIds,
          reason: reason,
        ),
      );
      if (res == null || !res) return;
      Get.back();
    } finally {
      _isLoading.value = false;
    }
  }

  // 加载接口
  void loadReasonsList() async {
    try {
      final res = await fetchReasons?.call();
      reasonsList = res?.list ?? [];
    } catch (error, stackTrace) {
      _logger.severe('loadReasonsList Error:', error, stackTrace);
    }
  }

  void handleSelectReason(int uuid) {
    final index = _giftIds.indexWhere((item) => item == uuid);
    //
    if (index != -1) {
      _giftIds.removeAt(index);
    } else {
      _giftIds.add(uuid);
    }
  }
}
