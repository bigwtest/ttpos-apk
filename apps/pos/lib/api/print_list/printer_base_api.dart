import 'package:get/get.dart';
import 'package:pos/model/response/print_list/printer_base.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class PrinterBaseApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'PrinterBaseApi');
  Logger get logger => _logger.logger;

  Future<PrinterBase?> getPrinterBase({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.printerBase.cashierPath,
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          PrinterBase.fromJson,
          response.data,
          modelName: 'ResponsePrinterBase',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getPrinterBase Error:', error, stackTrace);
      return null;
    }
  }
}
