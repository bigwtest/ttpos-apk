import 'package:get/get.dart';
import 'package:pos/api/print_list/print_list_api.dart';
import 'package:pos/api/print_list/printer_base_api.dart';
import 'package:pos/api/print_list/printer_print_api.dart';
import 'package:pos/model/request/print_list/req_print_list.dart';
import 'package:pos/model/response/print_list/printer_base.dart';
import 'package:pos/model/response/print_list/printer_list.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class PrintListController extends GetxController {
  final Log _logger = Log(appName: 'PrintListController');
  Logger get logger => _logger.logger;

  final RxList<Map<String, dynamic>> _statusList = [
    {
      'value': 1,
      'label': '成功',
    },
    {
      'value': 0,
      'label': '失败',
    },
    {
      'value': 2,
      'label': '补打成功',
    },
    {
      'value': 3,
      'label': '补打失败',
    },
  ].obs;
  List<Map<String, dynamic>> get statusList => _statusList.map((e) {
        e['label'] = e['label'].toString().tr;
        return e;
      }).toList();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxInt _pageNo = 1.obs;
  int get pageNo => _pageNo.value;
  set pageNo(int value) => _pageNo.value = value;

  final RxInt _pageSize = 10.obs;
  int get pageSize => _pageSize.value;
  set pageSize(int value) => _pageSize.value = value;

  final RxInt _total = 0.obs;
  int get total => _total.value;
  set total(int value) => _total.value = value;

  int get lastPage => (total <= 0) ? 1 : (total / pageSize).ceil();

  final RxInt _status = (-1).obs;
  int get status => _status.value;
  set status(int val) => _status.value = val;

  final RxInt _printerUuid = 0.obs;
  int get printerUuid => _printerUuid.value;
  set printerUuid(int value) => _printerUuid.value = value;

  final RxInt _dataType = (-1).obs;
  int get dataType => _dataType.value;
  set dataType(int value) => _dataType.value = value;

  final RxInt _queryStartTime = 0.obs;
  int get queryStartTime => _queryStartTime.value;
  set queryStartTime(int value) => _queryStartTime.value = value;

  final RxInt _queryEndTime = 0.obs;
  int get queryEndTime => _queryEndTime.value;
  set queryEndTime(int value) => _queryEndTime.value = value;

  final RxList<DateTime?> _timeValue = RxList<DateTime?>([]);
  List<DateTime?> get timeValue => _timeValue.toList();
  set timeValue(List<DateTime?> value) => _timeValue.value = value;

  final Rx<PrinterBase?> _printerBase = Rx<PrinterBase?>(null);
  PrinterBase? get printerBase => _printerBase.value;
  set printerBase(PrinterBase? value) => _printerBase.value = value;

  final PrinterBaseApi _printerBaseApi = PrinterBaseApi();

  Future<PrinterBase?> getPrinterBase() async {
    try {
      final response = await _printerBaseApi.getPrinterBase();
      printerBase = response;
      return response;
    } catch (e) {
      logger.severe('getPrinterBase Error: $e');
      return null;
    }
  }

  final Rx<PrinterList?> _printList = Rx<PrinterList?>(null);
  PrinterList? get printList => _printList.value;
  set printList(PrinterList? value) => _printList.value = value;

  final PrintListApi _printListApi = PrintListApi();

  Future<PrinterList?> getPrintList() async {
    isLoading = true;
    try {
      final response = await _printListApi.getPrintList(
        data: ReqPrintList(
          dataType: dataType,
          printerUuid: printerUuid,
          queryStartTime: queryStartTime,
          queryEndTime: queryEndTime,
          status: status,
          pageNo: pageNo,
          pageSize: pageSize,
        ),
      );
      printList = response;
      total = response?.meta.total ?? 0;
      pageNo = response?.meta.pageNo ?? 1;
      pageSize = response?.meta.pageSize ?? 10;
      return response;
    } catch (e) {
      logger.severe('getPrintList Error: $e');
      return null;
    } finally {
      isLoading = false;
    }
  }

  void search() {
    if (isLoading) return;
    pageNo = 1;
    getPrintList();
  }

  final PrinterPrintAPI _printerPrintApi = PrinterPrintAPI();

  Future<RespPrinterData?> handlePrint({required int uuid}) async {
    try {
      final response = await _printerPrintApi.printerPrint(
        uuid: uuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      return response;
    } catch (e) {
      logger.severe('handlePrint Error: $e');
      return null;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getPrinterBase();
    // 设置默认时间 当天时间 00:00:00 - 23:59:59
    final now = DateTime.now();
    timeValue = [
      DateTime(now.year, now.month, now.day),
      DateTime(now.year, now.month, now.day, 23, 59, 59),
    ];
    // 将时间戳转换为秒
    queryStartTime = timeValue[0]!.millisecondsSinceEpoch ~/ 1000;
    queryEndTime = timeValue[1]!.millisecondsSinceEpoch ~/ 1000;
    getPrintList();
  }
}
