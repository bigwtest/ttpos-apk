import 'package:get/get.dart';
import 'package:pos/api/top_up_list/top_up_print_api.dart';
import 'package:pos/components/order/components/dialog/base.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/model/request/top_up_list/request_top_up_print.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_ui/components/language/controllers/pick.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';

class TopUpPrintController extends GetxController {
  final Log _logger = Log(appName: 'TopUpPrintController');
  Logger get logger => _logger.logger;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxString _printLang = 'zh'.obs;
  String get printLang => _printLang.value;
  set printLang(String value) => _printLang.value = value;

  final RxInt _rechargeOrderUuid = 0.obs;
  int get rechargeOrderUuid => _rechargeOrderUuid.value;
  set rechargeOrderUuid(int value) => _rechargeOrderUuid.value = value;

  final TopUpPrintAPI _topUpPrintAPI = TopUpPrintAPI();

  Future<RespPrinterData?> topUpPrint() async {
    isLoading = true;
    final RequestTopUpPrint data = RequestTopUpPrint(
      rechargeOrderUuid: rechargeOrderUuid,
      printLang: printLang,
    );
    try {
      final response = await _topUpPrintAPI.topUpPrint(
        data,
        options: ExtraRequestOptions(
          showSuccessToast: true,
          showFailToast: true,
        ),
      );
      Get.back();
      return response;
    } catch (error, stackTrace) {
      logger.severe('print Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  void handlePrint(int uuid) async {
    PrinterSettingController printerSettingController = Get.find<PrinterSettingController>();

    if (printerSettingController.isMultilingual) {
      final LanguageItem? selectedLanguage = await LanguagePickerController.pick();
      if (selectedLanguage != null) {
        rechargeOrderUuid = uuid;
        printLang = selectedLanguage.name;
        final result = await topUpPrint();
        if (result != null) {
          PrintController.sendPrint(result);
        }
      }
    } else {
      dialogController.baseDialog(
        Obx(() {
          return BaseView(
            subtitle: '确定要打印小票吗？'.tr,
            onPressed: () async {
              Get.back();
              rechargeOrderUuid = uuid;
              final result = await topUpPrint();
              if (result != null) {
                PrintController.sendPrint(result);
              }
            },
            isLoading: isLoading,
          );
        }),
      );
    }
  }
}
