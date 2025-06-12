import 'package:get/get.dart';
import 'package:pos/api/order/pick_order_api.dart';
import 'package:pos/components/goods_cart/action/models/pick_order.dart';
import 'package:pos/controllers/order/operation_controller.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:pos/model/response/pick_order/pick_order.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/meta.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class ControllerPickOrder extends GetxController {
  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  OrderOperationController operationAPI = OrderOperationController(orderType: OrderOperationType.instant);

  final RxList<ResponsePickOrder> _orders = <ResponsePickOrder>[].obs;

  List<PickOrderViewModel> get orders => _orders
      .map(
        (item) => PickOrderViewModel(
          orderId: item.saleBillUuid,
          time: item.hideBillTime.tz,
          totalPrice: item.amount,
          goodsList: item.products.list
              .map(
                (e) => PickOrderGoodsViewModel(
                  goodsId: e.uuid,
                  goodsName: e.localeName.translate,
                  goodsPrice: e.price.toSafetyDouble(),
                  goodsNum: e.num,
                  status: e.status,
                ),
              )
              .toList(),
        ),
      )
      .toList();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // 分页数据
  // 总数
  final RxInt _total = 0.obs;
  int get total => _total.value;

  // 当前页数
  final RxInt _page = 1.obs;
  int get page => _page.value;

  final RxInt _pageSize = 10.obs;
  int get pageSize => _pageSize.value;

  // 是否还有更多数据
  final RxBool _hasMore = false.obs;
  bool get hasMore => _hasMore.value;

  // 加载分页loadding
  final RxBool _isLoadMoreLoading = false.obs;
  bool get isLoadMoreLoading => _isLoadMoreLoading.value;

  void _getOrderList() async {
    if (_isLoading.value) return;
    try {
      _isLoading.value = true;
      final queryParams = BasePageQuery(
        pageNo: page,
        pageSize: pageSize,
      );
      final res = await PickOrderAPI().getPickOrders(
        queryParams,
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      if (res == null) return;
      _orders.value = res.list;
      _pageSize.value = res.meta?.pageSize ?? _pageSize.value;
      _total.value = res.meta?.total ?? 0;
      _hasMore.value = res.meta?.hasMore ?? false;
    } catch (error, stackTrace) {
      _logger.severe('_getOrderList Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }

  void loadMore() async {
    if (_isLoadMoreLoading.value) return;
    if (hasMore) {
      _isLoadMoreLoading.value = true;
      try {
        _page.value++;
        final queryParams = BasePageQuery(
          pageNo: page,
          pageSize: pageSize,
        );
        final res = await PickOrderAPI().getPickOrders(
          queryParams,
          options: ExtraRequestOptions(
            showFailToast: true,
          ),
        );
        if (res == null) return;
        // 创建新列表并合并数据
        _orders.value = [..._orders, ...res.list];
        _pageSize.value = res.meta?.pageSize ?? _pageSize.value;
        _total.value = res.meta?.total ?? 0;
        _hasMore.value = res.meta?.hasMore ?? false;
      } catch (error, stackTrace) {
        _logger.severe('_getOrderList Error:', error, stackTrace);
        _hasMore.value = false;
      } finally {
        _isLoadMoreLoading.value = false;
      }
    }
  }

  final RxBool _isCancelOrderLoading = false.obs;
  bool get isCancelOrderLoading => _isCancelOrderLoading.value;
  void onCancelOrder({required int orderId, required List<PickOrderGoodsViewModel> goodsList}) async {
    _isCancelOrderLoading.value = true;
    try {
      // 已送厨商品
      final List<Map<String, dynamic>> deliveredProducts = goodsList
          .where((element) => element.status == 1)
          .map(
            (item) => {
              'name': item.goodsName,
              'quantity': item.goodsNum,
            },
          )
          .toList();
      await operationAPI.cancelOrder(
        saleBillUuid: orderId,
        products: deliveredProducts.isNotEmpty ? deliveredProducts : null,
        callback: (ResponseCart? cart) {
          if (cart != null) {
            _page.value = 1;
            _getOrderList();
          }
        },
      );
    } catch (error, stackTrace) {
      _logger.severe('onCancelOrder Error:', error, stackTrace);
    } finally {
      _isCancelOrderLoading.value = false;
    }
  }

  final RxMap<int, bool> _pickOrderLoadingMap = <int, bool>{}.obs;
  bool isPickerOrderLoading(int orderId) => _pickOrderLoadingMap[orderId] ?? false;

  void onPickerOrder(int orderId, void Function(ResponseCart? cart)? pickOrderCallBack) async {
    _pickOrderLoadingMap[orderId] = true;
    try {
      final res = await PickOrderAPI().pickerOrder(
        orderId,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
          showGlobalLoading: true,
        ),
      );
      if (res == null) return;
      if (pickOrderCallBack != null) {
        pickOrderCallBack(res);
      }
      Get.back();
    } catch (error, stackTrace) {
      _logger.severe('_getOrderList Error:', error, stackTrace);
    } finally {
      _pickOrderLoadingMap[orderId] = false;
    }
  }

  @override
  void onReady() {
    super.onReady();
    _getOrderList();
  }
}
