// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/top_up_list/top_up_list_api.dart';
import 'package:pos/model/request/top_up_list/request_top_up.dart';
import 'package:pos/model/response/top_up_list/resp_recharge_order_item.dart';
import 'package:pos/model/response/top_up_list/response_top_up.dart';
import 'package:pos/model/view/segmented_button/segmented_button.dart';
import 'package:ttpos_logger/controller.dart';

class TopUpOrderController extends GetxController {
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  final List<SegmentedButtonView> _segmentData = [
    SegmentedButtonView(label: '全部', value: -1),
    SegmentedButtonView(label: '待付款', value: 0),
    SegmentedButtonView(label: '已取消', value: 2),
    SegmentedButtonView(label: '已完成', value: 1),
  ];
  List<SegmentedButtonView> get segmentData => _segmentData.map((e) {
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
    SegmentedButtonView(label: '全部', value: (-1)),
  ];
  List<SegmentedButtonView> get dayData => _dayData.map((e) {
        e.label = e.label.tr;
        return e;
      }).toList();

  final RxInt _status = (-1).obs;
  int get status => _status.value;
  set status(int value) => _status.value = value;

  final RxInt _dateType = 0.obs;
  int get dateType => _dateType.value;
  set dateType(int value) => _dateType.value = value;

  final RxInt _queryStartTime = 0.obs;
  int get queryStartTime => _queryStartTime.value;
  set queryStartTime(int value) => _queryStartTime.value = value;

  final RxInt _queryEndTime = 0.obs;
  int get queryEndTime => _queryEndTime.value;
  set queryEndTime(int value) => _queryEndTime.value = value;

  final RxBool _enableCreateTime = true.obs;
  bool get enableCreateTime => _enableCreateTime.value;
  set enableCreateTime(bool value) => _enableCreateTime.value = value;

  final RxBool _enablePaymentTime = false.obs;
  bool get enablePaymentTime => _enablePaymentTime.value;
  set enablePaymentTime(bool value) => _enablePaymentTime.value = value;

  final RxString _orderNo = ''.obs;
  String get orderNo => _orderNo.value;
  set orderNo(String value) => _orderNo.value = value;

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

  final RxInt _page = 1.obs;
  int get page => _page.value;
  set page(int value) => _page.value = value;

  // 总页数

  int get lastPage => (total <= 0) ? 1 : (total / pageSize).ceil();

  final RxList<DateTime?> _timeValue = RxList<DateTime?>([]);
  List<DateTime?> get timeValue => _timeValue.toList();
  set timeValue(List<DateTime?> value) => _timeValue.value = value;
  final RxList<int> _timeModeValue = [0].obs;
  List<int> get timeModeValue => _timeModeValue.toList();
  set timeModeValue(List<int> value) => _timeModeValue.value = value;

  final RxList<RespRechargeOrderItem> _tableData = RxList<RespRechargeOrderItem>([]);
  List<RespRechargeOrderItem> get tableData => _tableData.toList();
  set tableData(List<RespRechargeOrderItem> value) => _tableData.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final TopUpListAPI _apiTopUpList = TopUpListAPI();

  Future<ResponseTopUp?> getTopUpList() async {
    isLoading = true;
    final RequestTopUp searchForm = RequestTopUp(
      dateType: dateType, // 日期类型 (-1=全部, 0=今天, 1=昨天, 2=本周)
      enableCreateTime: enableCreateTime, // 是否启用开台时间筛选
      enablePaymentTime: enablePaymentTime, // 是否启用结账时间筛选
      orderNo: orderNo, // 订单号筛选
      queryEndTime: queryEndTime, // 查询结束时间戳
      queryStartTime: queryStartTime, // 查询开始时间戳
      status: status, // 订单状态 (-1=全部, 0=待付款, 1=已完成, 2=已取消)
      pageNo: pageNo,
      pageSize: pageSize,
    );
    try {
      final response = await _apiTopUpList.getTopUpList(searchForm);
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
      _logger.severe('getTopUpListAPI Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  void search() {
    if (isLoading) return;
    pageNo = 1;
    getTopUpList();
  }

  void timeModeChanged() {
    //当timeModeValue包含0时，启用开台时间，否则禁用开台时间
    enableCreateTime = timeModeValue.contains(0);
    //当timeModeValue包含1时，启用结账时间，否则禁用结账时间
    enablePaymentTime = timeModeValue.contains(1);
  }
}
