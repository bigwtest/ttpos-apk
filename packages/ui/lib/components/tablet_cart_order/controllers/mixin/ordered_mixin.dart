import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';

mixin MixinOrdered on GetxController {
  Future<SentKitchen?> Function()? get fetchSentKitchenList;

  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 已送厨列表
  final RxList<SentKitchenItem> _sentKitchenList = const <SentKitchenItem>[].obs;
  List<SentKitchenItem> get sentKitchenList => _sentKitchenList;
  set sentKitchenList(List<SentKitchenItem> value) {
    // 检查两个列表是否相等
    bool areEqual = ListEquality<SentKitchenItem>().equals(_sentKitchenList, value);
    if (areEqual) return;
    //
    _sentKitchenList.assignAll(value);
  }

  final Rx<Product?> _activeSentKitchenProduct = Rx<Product?>(null);
  Product? get activeSentKitchenProduct => _activeSentKitchenProduct.value;
  set activeSentKitchenProduct(Product? value) {
    _activeSentKitchenProduct.value = value;
  }

  // 已送厨统计
  final Rx<SentKitchenAmountInfo> _sentKitchenAmountInfo = const SentKitchenAmountInfo(
    amount: SafetyNumber.zero,
    discountAmount: SafetyNumber.zero,
    memberDiscountAmount: SafetyNumber.zero,
    productAmount: SafetyNumber.zero,
    productNum: 0,
    productOriginAmount: SafetyNumber.zero,
    serviceAmount: SafetyNumber.zero,
    taxAmount: SafetyNumber.zero,
  ).obs;
  SentKitchenAmountInfo get sentKitchenAmountInfo => _sentKitchenAmountInfo.value;
  set sentKitchenAmountInfo(SentKitchenAmountInfo value) {
    _sentKitchenAmountInfo.value = value;
  }

  // 加载状态
  final RxBool _isSentKitchenLoading = false.obs;
  bool get isSentKitchenLoading => _isSentKitchenLoading.value;

  // 加载列表
  Future<void> getSentKitchenListFromAPI() async {
    if (_isSentKitchenLoading.value) return;
    try {
      _isSentKitchenLoading.value = true;
      final data = await fetchSentKitchenList?.call();
      if (data == null) return;
      sentKitchenList = data.groups.list;
      sentKitchenAmountInfo = data.amountInfo ??
          SentKitchenAmountInfo(
            amount: SafetyNumber.zero,
            discountAmount: SafetyNumber.zero,
            memberDiscountAmount: SafetyNumber.zero,
            productAmount: SafetyNumber.zero,
            productNum: 0,
            productOriginAmount: SafetyNumber.zero,
            serviceAmount: SafetyNumber.zero,
            taxAmount: SafetyNumber.zero,
          );
      // 设置默认值
      if (sentKitchenList.isNotEmpty && sentKitchenList[0].products.list.isNotEmpty) {
        final data = sentKitchenList.any((item) {
          final product = item.products.list
              .firstWhereOrNull((product) => !product.aboutBuffet.isCustomer && !product.aboutBuffet.isDelay);
          if (product != null) {
            activeSentKitchenProduct = product;
            return true;
          }
          return false;
        });
        // 找不到的时候
        if (!data) {
          activeSentKitchenProduct = null;
        }
      } else {
        activeSentKitchenProduct = null;
      }
    } catch (error, stackTrace) {
      _logger.severe(
        'getSentKitchenListFromAPI Error:',
        error,
        stackTrace,
      );
    } finally {
      _isSentKitchenLoading.value = false;
    }
  }

  void handleActiveSentKitchenProduct(Product? value) {
    if (value == null) return;
    if (!value.aboutBuffet.isCustomer && !value.aboutBuffet.isDelay) {
      activeSentKitchenProduct = value;
    }
  }
}
