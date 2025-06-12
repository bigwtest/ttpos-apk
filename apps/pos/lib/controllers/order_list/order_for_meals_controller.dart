// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/order_list/order_for_meals_api.dart';
import 'package:pos/model/request/order_list/request_order_for_meals.dart';
// Project imports:
import 'package:pos/model/response/order_list/resp_bill_lists.dart';
import 'package:pos/model/response/order_list/response_order_for_meals.dart';
import 'package:pos/model/response/order_list/table_list.dart';
import 'package:pos/model/view/segmented_button/segmented_button.dart';
import 'package:ttpos_logger/controller.dart';

class OrderForMealsController extends GetxController {
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  final RxBool _isNewOrder = true.obs;
  bool get isNewOrder => _isNewOrder.value;
  set isNewOrder(bool value) => _isNewOrder.value = value;

  final RxList<SegmentedButtonView> _statusData = RxList<SegmentedButtonView>([
    SegmentedButtonView(label: '全部'.tr, value: -1),
    SegmentedButtonView(label: '待付款'.tr, value: 0),
    SegmentedButtonView(label: '已取消'.tr, value: 2),
    SegmentedButtonView(label: '已完成'.tr, value: 1),
  ]);

  List<SegmentedButtonView> get statusData => _statusData.map((e) {
        if (e.value == -1) {
          e.label = '${'全部'.tr}(${(unpaidNum + cancelNum + completeNum).toString()})';
        } else if (e.value == 0) {
          e.label = '${'待付款'.tr}(${unpaidNum.toString()})';
        } else if (e.value == 2) {
          e.label = '${'已取消'.tr}(${cancelNum.toString()})';
        } else if (e.value == 1) {
          e.label = '${'已完成'.tr}(${completeNum.toString()})';
        }
        return e;
      }).toList();

  final List<SegmentedButtonView> _dayData = [
    SegmentedButtonView(label: '今天', value: 0),
    SegmentedButtonView(label: '昨天', value: 1),
    SegmentedButtonView(label: '本周', value: 2),
    SegmentedButtonView(label: '全部', value: -1),
  ];
  List<SegmentedButtonView> get dayData => _dayData.map((e) {
        e.label = e.label.tr;
        return e;
      }).toList();

  // 账单类型, -1=全都、 0=Desk桌台订单、1=OrderingFood点餐订单
  final RxInt _billType = (-1).obs;
  int get billType => _billType.value;
  set billType(int value) => _billType.value = value;

  // 日期类型 -1=全都、 0=今天、 1=昨天、 2=本周
  final RxInt _dateType = (0).obs;
  int get dateType => _dateType.value;
  set dateType(int value) => _dateType.value = value;

  // 就餐方式 -1=全都、 0=堂食、 1=外卖
  final RxInt _diningMethod = (-1).obs;
  int get diningMethod => _diningMethod.value;
  set diningMethod(int value) => _diningMethod.value = value;

  // 启用开台时间 false-不启用，true-启用
  final RxBool _enableCreateTime = true.obs;
  bool get enableCreateTime => _enableCreateTime.value;
  set enableCreateTime(bool value) => _enableCreateTime.value = value;

  // 启用结账时间 false-不启用，true-启用
  final RxBool _enablePayTime = false.obs;
  bool get enablePayTime => _enablePayTime.value;
  set enablePayTime(bool value) => _enablePayTime.value = value;

  // 订单号
  final RxString _orderNo = ''.obs;
  String get orderNo => _orderNo.value;
  set orderNo(String value) => _orderNo.value = value;

  // 查询结束时间
  final RxInt _queryEndTime = 0.obs;
  int get queryEndTime => _queryEndTime.value;
  set queryEndTime(int value) => _queryEndTime.value = value;

  // 查询开始时间
  final RxInt _queryStartTime = 0.obs;
  int get queryStartTime => _queryStartTime.value;
  set queryStartTime(int value) => _queryStartTime.value = value;

  // 账单状态, -1=全都、 0=待付款、1=已完成、2=已取消
  final RxInt _status = (-1).obs;
  int get status => _status.value;
  set status(int value) => _status.value = value;

  // 当前页码
  final RxInt _pageNo = 1.obs;
  int get pageNo => _pageNo.value;
  set pageNo(int value) => _pageNo.value = value;

  // 每页条数
  final RxInt _pageSize = 10.obs;
  int get pageSize => _pageSize.value;
  set pageSize(int value) => _pageSize.value = value;

  // 总条数
  final RxInt _total = 0.obs;
  int get total => _total.value;
  set total(int value) => _total.value = value;

  // 总页数
  int get lastPage => (total <= 0) ? 1 : (total / pageSize).ceil();

  // 取消条数
  final RxInt _cancelNum = 0.obs;
  int get cancelNum => _cancelNum.value;
  set cancelNum(int value) => _cancelNum.value = value;

  // 完成条数
  final RxInt _completeNum = 0.obs;
  int get completeNum => _completeNum.value;
  set completeNum(int value) => _completeNum.value = value;

  // 未付款条数
  final RxInt _unpaidNum = 0.obs;
  int get unpaidNum => _unpaidNum.value;
  set unpaidNum(int value) => _unpaidNum.value = value;

  // 是否加载中
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final Rx<Map<String, dynamic>> _selectedValue = Rx<Map<String, dynamic>>({});
  Map<String, dynamic> get selectedValue => _selectedValue.value;
  set selectedValue(Map<String, dynamic> value) => _selectedValue.value = value;

  final RxList<DateTime?> _timeValue = RxList<DateTime?>([]);
  List<DateTime?> get timeValue => _timeValue.toList();
  set timeValue(List<DateTime?> value) => _timeValue.value = value;
  final RxList<int> _timeModeValue = [0].obs;
  List<int> get timeModeValue => _timeModeValue.toList();
  set timeModeValue(List<int> value) => _timeModeValue.value = value;

  final RxList<RespBillLists> _tableData = RxList<RespBillLists>([]);
  set tableData(List<RespBillLists> value) => _tableData.value = value;
  List<TableList> get tableList => _tableData
      .map(
        (item) => TableList(
          billType: item.billType,
          consumerUuids: item.consumerUuids,
          extra: item.extra,
          finishTime: item.finishTime,
          isSplit: item.isSplit,
          orderAmount: item.orderAmount,
          orderNo: item.orderNo,
          payTypeName: item.payTypeName,
          paymentAmount: item.paymentAmount,
          saleBillUuid: item.saleBillUuid,
          saleOrderUuid: item.saleOrderUuid,
          saleOrders: item.saleOrders,
          childrenList: item.saleOrders,
          serialNo: item.serialNo,
          status: item.status,
        ),
      )
      .toList();

  final OrderForMealsListAPI _apiOrderForMealsList = OrderForMealsListAPI();

  /// 获取订单列表数据
  ///
  /// 该方法会：
  /// 1. 设置加载状态为true
  /// 2. 根据当前筛选条件创建搜索请求
  /// 3. 调用API获取订单列表
  /// 4. 用返回数据更新控制器状态
  /// 5. 处理过程中的错误
  ///
  /// 返回API响应数据，如果发生错误则返回null
  Future<ResponseOrderForMeals?> getOrderForMealsListAPI() async {
    isLoading = true;
    final RequestOrderForMeals searchForm = RequestOrderForMeals(
      billType: billType, // 账单类型 (-1=全部, 0=桌台订单, 1=点餐订单)
      dateType: dateType, // 日期类型 (-1=全部, 0=今天, 1=昨天, 2=本周)
      diningMethod: diningMethod, // 就餐方式 (-1=全部, 0=堂食, 1=外卖)
      enableCreateTime: enableCreateTime, // 是否启用开台时间筛选
      enablePayTime: enablePayTime, // 是否启用结账时间筛选
      orderNo: orderNo, // 订单号筛选
      queryEndTime: queryEndTime, // 查询结束时间戳
      queryStartTime: queryStartTime, // 查询开始时间戳
      status: status, // 订单状态 (-1=全部, 0=待付款, 1=已完成, 2=已取消)
      pageNo: pageNo,
      pageSize: pageSize,
    );
    try {
      final response = isNewOrder
          ? await _apiOrderForMealsList.getOrderForMealsList(searchForm)
          : await _apiOrderForMealsList.getOldOrderForMealsList(searchForm);
      // 处理数组
      tableData = response?.list ?? [];
      total = response?.meta.total ?? 0;
      pageNo = response?.meta.pageNo ?? 1;
      pageSize = response?.meta.pageSize ?? 10;
      cancelNum = response?.meta.cancelNum ?? 0;
      completeNum = response?.meta.completeNum ?? 0;
      unpaidNum = response?.meta.unpaidNum ?? 0;
      return response;
    } catch (error, stackTrace) {
      _logger.severe('getOrderForMealsListAPI Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  void search() {
    if (isLoading) return;
    pageNo = 1;
    getOrderForMealsListAPI();
  }

  // 初始化请求一次接口
  @override
  void onReady() {
    super.onReady();
    if (isLoading) return;
    getOrderForMealsListAPI();
  }

  void timeModeChanged() {
    //当timeModeValue包含0时，启用开台时间，否则禁用开台时间
    enableCreateTime = timeModeValue.contains(0);
    //当timeModeValue包含1时，启用结账时间，否则禁用结账时间
    enablePayTime = timeModeValue.contains(1);
  }
}
