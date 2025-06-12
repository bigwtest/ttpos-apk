import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/controller.dart';
// Model imports:
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';

//===========================================================================
// 必选商品控制器
//===========================================================================

class MustController extends GetxController {
  final Future<bool> Function()? fetchConfirmMust;
  final Future<bool> Function()? fetchMustRefresh;
  final List<MustGoodsItem> initMust; // 必选列表
  MustController({
    this.initMust = const [],
    this.fetchConfirmMust,
    this.fetchMustRefresh,
  });
  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 必点商品列表
  final RxList<MustGoodsItem> _mustGoodsList = <MustGoodsItem>[].obs;
  List<MustGoodsItem> get mustGoodsList => _mustGoodsList.toList();
  set mustGoodsList(List<MustGoodsItem> value) {
    // 检查两个列表是否相等
    final listEquality = ListEquality<MustGoodsItem>();
    bool areEqual = listEquality.equals(_mustGoodsList, value);
    if (areEqual) return;
    _mustGoodsList.assignAll(value);
  }

  //
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  //
  final RxBool _isRefreshLoading = false.obs;
  bool get isRefreshLoading => _isRefreshLoading.value;

  @override
  void onInit() async {
    // 监听
    mustGoodsList = initMust;
    //
    super.onInit();
  }

  // 确认
  Future<bool> handleConfirmMust() async {
    if (_isLoading.value) return false;
    try {
      _isLoading.value = true;
      final res = await fetchConfirmMust?.call();
      if (res != null && res) {
        // mustGoodsList = [];
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      _logger.severe('handleConfirmMust Error:', error, stackTrace);
      return false;
    } finally {
      _isLoading.value = false;
    }
  }

  Future<bool> handleMustRefresh() async {
    if (_isRefreshLoading.value) return false;
    try {
      _isRefreshLoading.value = true;
      //
      final res = await fetchMustRefresh?.call();
      //
      return res != null && res;
    } catch (error, stackTrace) {
      _logger.severe('handleMustRefresh Error:', error, stackTrace);
      return false;
    } finally {
      _isRefreshLoading.value = false;
    }
  }
}
