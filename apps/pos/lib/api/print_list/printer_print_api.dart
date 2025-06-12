import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class PrinterPrintAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'PrinterPrintAPI');
  Logger get logger => _logger.logger;

  Future<RespPrinterData?> printerPrint({
    required int uuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.printerPrint.cashierPath,
        data: {'uuid': uuid},
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          RespPrinterData.fromJson,
          response.data,
          modelName: 'RespPrinterData',
          logger: logger,
          options: options,
        );
      }
      return null;
    } catch (e) {
      logger.severe('打印预结账单异常: $e');
      return null;
    }
  }
}
