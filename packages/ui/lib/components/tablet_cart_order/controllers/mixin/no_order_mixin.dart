import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tablet_cart_order/models/num_change_model.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';

mixin MixinNoOrder on GetxController {
  Future<UnsentKitchen?> Function()? get fetchUnsentKitchenList;
  Future<bool> Function(GoodsNumChangeModel detail)? get fetchNumChange;

  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 已送厨列表
  final RxList<Product> _unsentKitchenList = const <Product>[].obs;
  List<Product> get unsentKitchenList => _unsentKitchenList;
  set unsentKitchenList(List<Product> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<Product>().equals(_unsentKitchenList, value);
    if (areEqual) return;
    //
    _unsentKitchenList.assignAll(value);
  }

  final Rx<Product?> _activeUnsentKitchenProduct = Rx<Product?>(null);
  Product? get activeUnsentKitchenProduct => _activeUnsentKitchenProduct.value;
  set activeUnsentKitchenProduct(Product? value) {
    _activeUnsentKitchenProduct.value = value;
  }

  // 已送厨统计
  final Rx<UnsentKitchenAmountInfo> _unsentKitchenAmountInfo = const UnsentKitchenAmountInfo(
    productAmount: SafetyNumber.zero,
    productNum: 0,
  ).obs;
  UnsentKitchenAmountInfo get unsentKitchenAmountInfo => _unsentKitchenAmountInfo.value;
  set unsentKitchenAmountInfo(UnsentKitchenAmountInfo value) {
    _unsentKitchenAmountInfo.value = value;
  }

  // 加载状态
  final RxBool _isUnsentKitchenLoading = false.obs;
  bool get isUnsentKitchenLoading => _isUnsentKitchenLoading.value;

  // 加载状态
  final RxBool _isNumChangeLoading = false.obs;
  bool get isNumChangeLoading => _isNumChangeLoading.value;

  //
  final Rx<GoodsNumChangeModel> _changeProduct = GoodsNumChangeModel(
    num: 0,
    saleOrderProductUuid: 0,
    type: CounterType.up,
  ).obs;
  GoodsNumChangeModel get changeProduct => _changeProduct.value;
  set changeProduct(GoodsNumChangeModel value) {
    if (_changeProduct.value == value) return;
    _changeProduct.value = value;
  }

  // 加载列表
  Future<void> getUnsentKitchenListFromAPI() async {
    if (_isUnsentKitchenLoading.value) return;
    try {
      _isUnsentKitchenLoading.value = true;
      final data = await fetchUnsentKitchenList?.call();
      if (data == null) return;
      unsentKitchenList = data.products.list;
      unsentKitchenAmountInfo = data.amountInfo;
      // 设置默认值
      if (unsentKitchenList.isNotEmpty) {
        activeUnsentKitchenProduct = unsentKitchenList[0];
      } else {
        activeUnsentKitchenProduct = null;
      }
    } catch (error, stackTrace) {
      _logger.severe(
        'getUnsentKitchenListFromAPI Error:',
        error,
        stackTrace,
      );
    } finally {
      _isUnsentKitchenLoading.value = false;
    }
  }

  void handleActiveUnsentKitchenProduct(Product? value) {
    activeUnsentKitchenProduct = value;
  }

  //
  void handleUnsentKitchenCounter(CounterType type, Product item) async {
    if (item.isMust && type == CounterType.down && item.num == 1) {
      bool isContinue = false;
      await DialogManager.showConfirmDialog(
        message: '此商品为必点商品，是否删除此商品？'.tr,
        onConfirm: () {
          isContinue = true;
          return Future.value(true);
        },
      );
      if (!isContinue) return;
    }
    //
    int num = 0;
    switch (type) {
      case CounterType.up:
        // 增加
        num = item.num + 1;
        break;
      case CounterType.down:
        // 减少
        num = item.num - 1;
        break;
    }
    //
    changeProduct = GoodsNumChangeModel(
      saleOrderProductUuid: item.uuid,
      num: num,
      type: type,
    );
    // 请求
    _handleNumChange();
  }

  Future<void> _handleNumChange() async {
    if (_isNumChangeLoading.value) return;
    try {
      _isNumChangeLoading.value = true;
      final res = await fetchNumChange?.call(changeProduct);
      if (res != null && res) {
        // 因为websocket会自动更新，所以这里不需要手动更新
        // getUnsentKitchenListFromAPI();
      }
    } catch (error, stackTrace) {
      _logger.severe(
        '_handleNumChange Error:',
        error,
        stackTrace,
      );
    } finally {
      _isNumChangeLoading.value = false;
    }
  }
}
