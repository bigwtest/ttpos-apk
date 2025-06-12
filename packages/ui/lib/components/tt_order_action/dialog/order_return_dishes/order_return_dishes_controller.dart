import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/reason/return_reason.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_return_dishes/order_return_dishes_model.dart';

class OrderReturnDishesController extends GetxController {
  final int initNum;
  final Future<BaseList<ResponseReturnReason>?> Function()? fetchReasons;
  Future<bool> Function(OrderReturnDishesModel data)? fetchConfirm;
  OrderReturnDishesController({
    this.initNum = 1,
    this.fetchReasons,
    this.fetchConfirm,
  });
  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;
  // 退菜原因
  final RxString _reason = ''.obs;
  String get reason => _reason.value;
  set reason(String value) {
    if (_reason.value == value) {
      return;
    }
    _reason.value = value;
  }

  // 数量
  final RxString _num = ''.obs;
  String get num => _num.value;
  set num(String value) {
    if (_num.value == value) {
      return;
    }
    _num.value = value;
  }

  // 退菜原因ID
  final RxList<int> _returnIds = <int>[].obs;
  List<int> get returnIds => _returnIds.toList();

  // 退菜原因
  final RxList<ResponseReturnReason> _reasonsList = <ResponseReturnReason>[].obs;
  List<ResponseReturnReason> get reasonsList => _reasonsList;
  set reasonsList(List<ResponseReturnReason> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<ResponseReturnReason>().equals(_reasonsList, value);
    if (areEqual) return;
    reasonsList.addAll(value);
    // 缓存
    _cachedReasonsList = value;
  }

  // 缓存列表
  static List<ResponseReturnReason> _cachedReasonsList = [];

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // 加载状态
  final RxBool _isFocus = true.obs;
  bool get isFocus => _isFocus.value;
  set isFocus(bool value) {
    _isFocus.value = value;
  }

  @override
  void onInit() async {
    //
    num = initNum.toString();
    // 如果有缓存数据，直接使用
    if (_cachedReasonsList.isNotEmpty) {
      reasonsList = _cachedReasonsList;
      handleSelectedReason();
    }
    //
    loadReasonsList();
    //
    super.onInit();
  }

  // 点击按钮
  void handleConfirm() async {
    if (_isLoading.value) {
      return;
    }
    if (reasonsList.isNotEmpty) {
      if (returnIds.isEmpty && reason.isEmpty) {
        DialogManager.showToast('请选择或者填写退菜原因'.tr);
        return;
      }
    } else {
      if (reason.isEmpty) {
        DialogManager.showToast('请输入退菜原因'.tr);
        return;
      }
    }
    if (num.isEmpty) {
      DialogManager.showToast('请输入退菜数量'.tr);
      return;
    }
    final int productNum = int.tryParse(num) ?? 0;
    if (productNum > 1) {
      final isConfirm = await DialogManager.showConfirmDialog(
        message: '确认退@num份该菜品？'.trParams({
          'num': productNum.toString(),
        }),
      );
      if (!isConfirm) return;
    }
    try {
      _isLoading.value = true;
      final res = await fetchConfirm?.call(
        OrderReturnDishesModel(
          num: productNum,
          reason: reason,
          returnIds: returnIds,
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
      handleSelectedReason();
    } catch (error, stackTrace) {
      _logger.severe('loadReasonsList Error:', error, stackTrace);
    }
  }

  // 默认选中第一个退菜原因
  void handleSelectedReason() {
    if (reasonsList.isNotEmpty && returnIds.isEmpty) {
      final firstReason = reasonsList.first;
      _returnIds.add(firstReason.uuid);
    }
  }

  // 选中退菜原因
  void handleSelectReason(int uuid) {
    final index = _returnIds.indexWhere((item) => item == uuid);
    //
    if (index != -1) {
      _returnIds.removeAt(index);
    } else {
      _returnIds.add(uuid);
    }
  }
}
