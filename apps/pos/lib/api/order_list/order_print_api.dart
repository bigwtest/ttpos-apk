import 'package:get/get.dart';
import 'package:pos/model/request/order_list/request_order_print.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class OrderPrintAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderPrintAPI');
  Logger get logger => _logger.logger;

  Future<RespPrinterData?> printOrder(
    RequestOrderPrint data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.orderPrint.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return RespPrinterData.fromJson(response.data);
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Print Order Error:', error, stackTrace);
      return null;
    }
  }

  Future<RespPrinterData?> printOldOrder(
    RequestOrderPrint data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.oldOrderPrint.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return RespPrinterData.fromJson(response.data);
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Print Order Error:', error, stackTrace);
      return null;
    }
  }
}
