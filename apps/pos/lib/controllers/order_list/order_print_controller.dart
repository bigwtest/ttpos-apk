import 'package:get/get.dart';
import 'package:pos/api/order_list/order_print_api.dart';
import 'package:pos/model/request/order_list/request_order_print.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_ui/components/language/controllers/pick.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';

class OrderPrintController extends GetxController {
  final Log _logger = Log(appName: 'OrderPrintController');
  Logger get logger => _logger.logger;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxInt _saleBillUuid = 0.obs;
  int get saleBillUuid => _saleBillUuid.value;
  set saleBillUuid(int value) => _saleBillUuid.value = value;

  final RxInt _saleOrderUuid = 0.obs;
  int get saleOrderUuid => _saleOrderUuid.value;
  set saleOrderUuid(int value) => _saleOrderUuid.value = value;

  final RxBool _isNewOrder = false.obs;
  bool get isNewOrder => _isNewOrder.value;
  set isNewOrder(bool value) => _isNewOrder.value = value;

  final RxString _printLang = ''.obs;
  String get printLang => _printLang.value;
  set printLang(String value) => _printLang.value = value;

  final OrderPrintAPI _orderPrintAPI = OrderPrintAPI();

  Future<RespPrinterData?> getOrderPrintAPI() async {
    isLoading = true;
    final RequestOrderPrint searchForm = RequestOrderPrint(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      printLang: printLang,
    );
    try {
      final response = isNewOrder
          ? await _orderPrintAPI.printOrder(
              searchForm,
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            )
          : await _orderPrintAPI.printOldOrder(
              searchForm,
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
      return response;
    } catch (error, stackTrace) {
      logger.severe('getOrderPrintAPI Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  final PrinterSettingController printerSettingController = Get.find<PrinterSettingController>();
  void printTicket(int saleBillUuid, int saleOrderUuid, bool isNewOrder) async {
    if (printerSettingController.isMultilingual) {
      final LanguageItem? selectedLanguage = await LanguagePickerController.pick();
      if (selectedLanguage != null) {
        printLang = selectedLanguage.name;
        printTicketPrint(saleBillUuid, saleOrderUuid, isNewOrder);
      }
    } else {
      printTicketPrint(saleBillUuid, saleOrderUuid, isNewOrder);
    }
  }

  void printTicketPrint(int saleBillUuid, int saleOrderUuid, bool isNewOrder) async {
    this.saleBillUuid = saleBillUuid;
    this.saleOrderUuid = saleOrderUuid;
    this.isNewOrder = isNewOrder;
    final result = await getOrderPrintAPI();
    if (result != null) {
      PrintController.sendPrint(result);
    }
  }
}
