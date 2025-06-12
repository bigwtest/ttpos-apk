import 'package:get/get.dart';
import 'package:pos/api/order_list/order_invoice_api.dart';
import 'package:pos/api/order_list/order_invoice_print.dart';
import 'package:pos/model/request/order_list/request_order_invoice.dart';
import 'package:pos/model/request/order_list/request_order_uuid.dart';
import 'package:pos/model/response/order_list_details/order_invoice_info.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/invoice/invoice_info.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_ui/components/invoice/controller/invoice_dialog_controller.dart';
import 'package:ttpos_ui/components/language/controllers/pick.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';

class OrderInvoiceController extends GetxController {
  final Log _logger = Log(appName: 'OrderInvoiceController');
  Logger get logger => _logger.logger;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxBool _isPrinting = false.obs;
  bool get isPrinting => _isPrinting.value;
  set isPrinting(bool value) => _isPrinting.value = value;

  final RxInt _saleBillUuid = 0.obs;
  int get saleBillUuid => _saleBillUuid.value;
  set saleBillUuid(int value) => _saleBillUuid.value = value;

  final RxInt _saleOrderUuid = 0.obs;
  int get saleOrderUuid => _saleOrderUuid.value;
  set saleOrderUuid(int value) => _saleOrderUuid.value = value;

  final RxString _printLang = ''.obs;
  String get printLang => _printLang.value;
  set printLang(String value) => _printLang.value = value;

  final Rx<OrderInvoiceInfo> _orderInvoiceInfo = OrderInvoiceInfo(
    companyAddr: '',
    companyName: '',
    companyPhone: '',
    companyTaxNumber: '',
  ).obs;
  OrderInvoiceInfo get orderInvoiceInfo => _orderInvoiceInfo.value;
  set orderInvoiceInfo(OrderInvoiceInfo value) => _orderInvoiceInfo.value = value;

  bool get isReadOnly =>
      orderInvoiceInfo.companyAddr.isNotEmpty ||
      orderInvoiceInfo.companyName.isNotEmpty ||
      orderInvoiceInfo.companyPhone.isNotEmpty ||
      orderInvoiceInfo.companyTaxNumber.isNotEmpty;

  final OrderInvoiceAPI _orderInvoiceAPI = OrderInvoiceAPI();

  Future<OrderInvoiceInfo?> getOrderInvoice(int saleBillUuid, int saleOrderUuid, bool isNewOrder) async {
    isLoading = true;
    try {
      final response = isNewOrder
          ? await _orderInvoiceAPI
              .getOrderInvoice(RequestOrderUuid(saleBillUuid: saleBillUuid, saleOrderUuid: saleOrderUuid))
          : await _orderInvoiceAPI
              .getOldOrderInvoice(RequestOrderUuid(saleBillUuid: saleBillUuid, saleOrderUuid: saleOrderUuid));
      orderInvoiceInfo = response ??
          OrderInvoiceInfo(
            companyAddr: '',
            companyName: '',
            companyPhone: '',
            companyTaxNumber: '',
          );
      return null;
    } catch (error, stackTrace) {
      logger.severe('getOrderInvoice Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  final OrderInvoicePrintAPI _orderInvoicePrintAPI = OrderInvoicePrintAPI();

  Future<RespPrinterData?> postOrderInvoicePrint(bool isNewOrder) async {
    isPrinting = true;
    try {
      final response = isNewOrder
          ? await _orderInvoicePrintAPI.orderInvoicePrint(
              RequestOrderInvoice(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                companyAddr: orderInvoiceInfo.companyAddr,
                companyName: orderInvoiceInfo.companyName,
                companyPhone: orderInvoiceInfo.companyPhone,
                companyTaxNumber: orderInvoiceInfo.companyTaxNumber,
                printLang: printLang,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            )
          : await _orderInvoicePrintAPI.oldOrderInvoicePrint(
              RequestOrderInvoice(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                companyAddr: orderInvoiceInfo.companyAddr,
                companyName: orderInvoiceInfo.companyName,
                companyPhone: orderInvoiceInfo.companyPhone,
                companyTaxNumber: orderInvoiceInfo.companyTaxNumber,
                printLang: printLang,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
      return response;
    } catch (error, stackTrace) {
      logger.severe('orderInvoicePrint Error:', error, stackTrace);
      return null;
    } finally {
      isPrinting = false;
    }
  }

  final ConfigController configController = Get.find<ConfigController>();
  final PrinterSettingController printerSettingController = Get.find<PrinterSettingController>();

  void invoicePrint(int saleBillUuid, int saleOrderUuid, bool isNewOrder) async {
    // 发票打印
    this.saleOrderUuid = saleOrderUuid;
    this.saleBillUuid = saleBillUuid;
    if (configController.isInvoice) {
      await getOrderInvoice(saleBillUuid, saleOrderUuid, isNewOrder);
      final InvoiceInfo? invoiceInfo = await InvoiceController.openInvoice(
        isReadOnly: isReadOnly,
        isLanguage: printerSettingController.isMultilingual,
        invoiceInfo: InvoiceInfo(
          companyAddress: orderInvoiceInfo.companyAddr,
          companyName: orderInvoiceInfo.companyName,
          companyTaxNumber: orderInvoiceInfo.companyTaxNumber,
          companyPhone: orderInvoiceInfo.companyPhone,
        ),
      );
      if (invoiceInfo != null) {
        orderInvoiceInfo = OrderInvoiceInfo(
          companyAddr: invoiceInfo.companyAddress,
          companyName: invoiceInfo.companyName,
          companyTaxNumber: invoiceInfo.companyTaxNumber,
          companyPhone: invoiceInfo.companyPhone ?? '',
        );
        printLang = invoiceInfo.printLang ?? '';
        final result = await postOrderInvoicePrint(isNewOrder);
        if (result != null) {
          PrintController.sendPrint(result);
        }
      }
    } else if (printerSettingController.isMultilingual) {
      final LanguageItem? selectedLanguage = await LanguagePickerController.pick();
      if (selectedLanguage != null) {
        printLang = selectedLanguage.name;
        final result = await postOrderInvoicePrint(isNewOrder);
        if (result != null) {
          PrintController.sendPrint(result);
        }
      }
    } else {
      final result = await postOrderInvoicePrint(isNewOrder);
      if (result != null) {
        PrintController.sendPrint(result);
      }
    }
  }
}
