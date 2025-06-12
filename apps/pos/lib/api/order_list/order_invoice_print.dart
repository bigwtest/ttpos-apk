import 'package:get/get.dart';
import 'package:pos/model/request/order_list/request_order_invoice.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class OrderInvoicePrintAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderInvoicePrintAPI');
  Logger get logger => _logger.logger;

  Future<RespPrinterData?> orderInvoicePrint(
    RequestOrderInvoice data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.orderInvoicePrint.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return RespPrinterData.fromJson(response.data);
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Deposit Cash Error:', error, stackTrace);
      return null;
    }
  }

  Future<RespPrinterData?> oldOrderInvoicePrint(
    RequestOrderInvoice data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.oldOrderInvoicePrint.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return RespPrinterData.fromJson(response.data);
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Deposit Cash Error:', error, stackTrace);
      return null;
    }
  }
}
