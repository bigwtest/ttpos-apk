import 'package:get/get.dart';
import 'package:pos/model/request/top_up_list/request_top_up_print.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class TopUpPrintAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'TopUpPrintAPI');
  Logger get logger => _logger.logger;

  Future<RespPrinterData?> topUpPrint(
    RequestTopUpPrint data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.topUpPrint.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return RespPrinterData.fromJson(response.data);
    } catch (error, stackTrace) {
      logger.severe('TopUpPrint Error:', error, stackTrace);
      return null;
    }
  }
}
