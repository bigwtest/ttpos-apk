// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/order_list/order_details_api.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:pos/model/request/order_list_details/order_details.dart';
import 'package:pos/model/response/order_list_details/detail.dart';
import 'package:pos/model/response/order_list_details/extra.dart';
import 'package:pos/model/response/order_list_details/order_details.dart';
import 'package:pos/model/response/order_list_details/resp_order_operation_log.dart';
import 'package:pos/model/view/category/first_category_model.dart';
import 'package:pos/model/view/operation_log/operation_log.dart';
import 'package:ttpos_logger/controller.dart';

class OrderDetailsController extends GetxController {
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  final RxInt _saleBillUuid = 0.obs;
  int get saleBillUuid => _saleBillUuid.value;
  set saleBillUuid(int value) => _saleBillUuid.value = value;

  final RxInt _saleOrderUuid = 0.obs;
  int get saleOrderUuid => _saleOrderUuid.value;
  set saleOrderUuid(int value) => _saleOrderUuid.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(int value) => _selectedIndex.value = value;

  final RxList<RespOrderOperationLog> _operationLogList = <RespOrderOperationLog>[].obs;
  List<RespOrderOperationLog> get operationLogList => _operationLogList.toList();
  set operationLogList(List<RespOrderOperationLog> value) => _operationLogList.value = value;

  final RxBool _isMain = false.obs;
  bool get isMain => _isMain.value;
  set isMain(bool value) => _isMain.value = value;

  final RxBool _isNewOrder = false.obs;
  bool get isNewOrder => _isNewOrder.value;
  set isNewOrder(bool value) => _isNewOrder.value = value;

  List<OperationLogView> get operationLog => _operationLogList
      .map(
        (item) => OperationLogView(
          time: item.createTime,
          remark: item.description,
          saleBillUuid: 0,
          saleOrderUuid: 0,
          source: '${item.userName}  ${item.userEmail.isNotEmpty ? '(${item.userEmail})' : ''}  ${item.source} ',
          uuid: item.uuid,
          payType: item.payType,
          refundType: item.refundType,
        ),
      )
      .toList();

  final Rx<Detail> _detail = Detail(
    billType: 0,
    buffetNames: '',
    cancelReason: '',
    cashierName: '',
    createTime: 0,
    diningMethod: 0,
    finishTime: 0,
    isBuffet: false,
    isSplit: false,
    memberNames: '',
    memberUuids: '',
    orderAmount: 0,
    orderNo: '',
    payTypes: [],
    paymentAmount: 0,
    refundAmount: 0,
    remark: '',
    saleBillUuid: 0,
    saleOrders: [],
    serialNo: '',
    status: 0,
  ).obs;
  Detail get detail => _detail.value;
  set detail(Detail value) => _detail.value = value;

  final Rx<Extra> _extra = Extra(
    isCellCancel: false,
    isCellDelete: false,
    isCellInvoice: false,
    isCellPrint: false,
    isCellRefund: false,
    isCellReverseSettle: false,
  ).obs;
  Extra get extra => _extra.value;
  set extra(Extra value) => _extra.value = value;

  final OrderDetailsAPI _orderDetailsAPI = OrderDetailsAPI();

  List<FirstCategoryViewModel> get categoryList => detail.saleOrders
      .map(
        (item) => FirstCategoryViewModel(
          name: item.serialNo.toString(),
        ),
      )
      .toList();

  Future<ResponseOrderDetails?> getOrderDetailsAPI() async {
    isLoading = true;
    final RequestOrderDetails data = RequestOrderDetails(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
    );
    try {
      final response =
          isNewOrder ? await _orderDetailsAPI.getOrderDetails(data) : await _orderDetailsAPI.getOldOrderDetails(data);
      operationLogList = response?.operationLog.list ?? [];
      detail = response!.detail;
      extra = response.extra;
      return response;
    } catch (error, stackTrace) {
      _logger.severe('getOrderForMealsListAPI Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  final CustomDrawerController drawerController = Get.find<CustomDrawerController>();
  void details(int saleBillUuid, int saleOrderUuid, bool isMain, bool isNewOrder) {
    drawerController.openEndDrawer('orderDetails');
    this.saleBillUuid = saleBillUuid;
    this.saleOrderUuid = isMain == true ? 0 : saleOrderUuid;
    this.isMain = isMain;
    this.isNewOrder = isNewOrder;
    init();
  }

  void init() {
    if (isLoading) return;
    getOrderDetailsAPI();
  }
}
