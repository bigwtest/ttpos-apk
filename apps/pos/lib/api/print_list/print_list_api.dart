import 'package:get/get.dart';
import 'package:pos/model/request/print_list/req_print_list.dart';
import 'package:pos/model/response/print_list/printer_list.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class PrintListApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'PrintListApi');
  Logger get logger => _logger.logger;

  Future<PrinterList?> getPrintList({
    required ReqPrintList data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.printList.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          PrinterList.fromJson,
          response.data,
          modelName: 'ResponsePrinterList',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getPrinterList Error:', error, stackTrace);
      return null;
    }
  }
}
