// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/business_data/business_data_api.dart';
import 'package:pos/api/data/get_statistics_api.dart';
import 'package:pos/model/request/business_data/req_print.dart';
import 'package:pos/model/request/data/requ_statistics.dart';
import 'package:pos/model/response/data/resp_business_statistics.dart';
import 'package:pos/model/response/data/resp_payment_statistics.dart';
import 'package:pos/model/response/data/resp_product_category_statistics.dart';
import 'package:pos/model/response/data/resp_product_statistics.dart';
import 'package:pos/model/view/segmented_button/segmented_button.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';

class DataController extends GetxController {
  final RxInt _type = 0.obs;
  int get type => _type.value;
  set type(int value) => _type.value = value;

  final Log _logger = Log(appName: 'DataController');
  Logger get logger => _logger.logger;

  final List<SegmentedButtonView> _dayData = [
    SegmentedButtonView(label: '昨日营业', value: 5),
    SegmentedButtonView(label: '今天', value: 1),
    SegmentedButtonView(label: '本周', value: 3),
    SegmentedButtonView(label: '本月', value: 4),
  ];
  List<SegmentedButtonView> get dayData => _dayData.map((e) {
        e.label = e.label.tr;
        return e;
      }).toList();

  final RxInt _timeType = 5.obs;
  int get timeType => _timeType.value;
  set timeType(int value) => _timeType.value = value;

  final RxInt _queryStartTime = 0.obs;
  int get queryStartTime => _queryStartTime.value;
  set queryStartTime(int value) => _queryStartTime.value = value;

  final RxInt _queryEndTime = 0.obs;
  int get queryEndTime => _queryEndTime.value;
  set queryEndTime(int value) => _queryEndTime.value = value;

  final RxInt _categoryType = (-1).obs;
  int get categoryType => _categoryType.value;
  set categoryType(int value) => _categoryType.value = value;

  final RxList<DateTime?> _timeValue = RxList<DateTime?>([]);
  List<DateTime?> get timeValue => _timeValue.toList();
  set timeValue(List<DateTime?> value) => _timeValue.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final Rx<RespBusinessStatistics?> _businessStatistics = Rx<RespBusinessStatistics?>(null);
  RespBusinessStatistics? get businessStatistics => _businessStatistics.value;
  set businessStatistics(RespBusinessStatistics? value) => _businessStatistics.value = value;

  final Rx<RespPaymentStatistics?> _paymentStatistics = Rx<RespPaymentStatistics?>(null);
  RespPaymentStatistics? get paymentStatistics => _paymentStatistics.value;
  set paymentStatistics(RespPaymentStatistics? value) => _paymentStatistics.value = value;

  final Rx<RespProductCategoryStatistics?> _productCategoryStatistics = Rx<RespProductCategoryStatistics?>(null);
  RespProductCategoryStatistics? get productCategoryStatistics => _productCategoryStatistics.value;
  set productCategoryStatistics(RespProductCategoryStatistics? value) => _productCategoryStatistics.value = value;

  final Rx<RespProductStatistics?> _productStatistics = Rx<RespProductStatistics?>(null);
  RespProductStatistics? get productStatistics => _productStatistics.value;
  set productStatistics(RespProductStatistics? value) => _productStatistics.value = value;

  final GetStatisticsAPI _getStatisticsAPI = GetStatisticsAPI();

  //全部查询
  Future<RespBusinessStatistics?> getBusinessStatistics() async {
    isLoading = true;
    try {
      final result = await _getStatisticsAPI.getBusinessStatistics(
        RequStatistics(
          categoryType: categoryType,
          queryEndTime: queryEndTime,
          queryStartTime: queryStartTime,
          timeType: timeType,
        ),
      );
      businessStatistics = result;
      return result;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  //按支付方式查询
  Future<RespPaymentStatistics?> getPaymentStatistics() async {
    isLoading = true;
    try {
      final result = await _getStatisticsAPI.getPaymentStatistics(
        RequStatistics(
          categoryType: categoryType,
          queryEndTime: queryEndTime,
          queryStartTime: queryStartTime,
          timeType: timeType,
        ),
      );
      paymentStatistics = result;
      return result;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  //按商品分类查询
  Future<RespProductCategoryStatistics?> getProductCategoryStatistics() async {
    isLoading = true;
    try {
      final result = await _getStatisticsAPI.getProductCategoryStatistics(
        RequStatistics(
          categoryType: categoryType,
          queryEndTime: queryEndTime,
          queryStartTime: queryStartTime,
          timeType: timeType,
        ),
      );
      productCategoryStatistics = result;
      return result;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  //按商品
  Future<RespProductStatistics?> getProductStatistics() async {
    isLoading = true;
    try {
      final result = await _getStatisticsAPI.getProductStatistics(
        RequStatistics(
          categoryType: categoryType,
          queryEndTime: queryEndTime,
          queryStartTime: queryStartTime,
          timeType: timeType,
        ),
      );
      productStatistics = result;
      return result;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  void search() {
    if (isLoading == true) return;
    // 全部
    if (type == 0) {
      getBusinessStatistics();
    }
    // 按支付方式
    if (type == 1) {
      getPaymentStatistics();
    }
    // 按商品分类
    if (type == 2) {
      getProductCategoryStatistics();
    }
    // 按商品
    if (type == 3) {
      getProductStatistics();
    }
  }

  //打印
  void onPrint() async {
    try {
      final response = await BusinessDataApi().handlePrint(
        data: ReqBusinessDataPrint(
          categoryType: categoryType,
          queryEndTime: queryEndTime,
          queryStartTime: queryStartTime,
          statisticsType: type,
          timeType: timeType,
        ),
        options: ExtraRequestOptions(
          showGlobalLoading: true,
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      if (response == null) return;
      if (response.data != '') {
        PrintController.sendPrint(response);
      }
    } catch (e) {
      logger.severe('打印异常: $e');
    }
  }

  @override
  void onInit() {
    super.onInit();
    getBusinessStatistics();
  }
}
