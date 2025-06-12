import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/usb_print/req_usb_printer_data.dart';

class UsbPrintAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'UsbPrintAPI');
  Logger get logger => _logger.logger;

  Future<bool> reportPrinterData({
    required List<ReqUsbPrinterData> data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.reportUsbPrinterData.cashierPath,
        data: {'list': data},
        requestOptions: options,
      );
      return response.code.success;
    } catch (e) {
      logger.severe('获取打印列表异常: $e');
      return false;
    }
  }
}
