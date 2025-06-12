// Package imports:
import 'package:get/get.dart';
// Model imports:
import 'package:pos/model/request/order_list/request_order_uuid.dart';
import 'package:pos/model/response/order_list_details/order_invoice_info.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderInvoiceAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderInvoiceAPI');
  Logger get logger => _logger.logger;

  Future<OrderInvoiceInfo?> getOrderInvoice(
    RequestOrderUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.orderInvoice.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          OrderInvoiceInfo.fromJson,
          response.data,
          modelName: 'OrderInvoiceInfo',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('OrderInvoiceInfo Error:', error, stackTrace);
      return null;
    }
  }

  Future<OrderInvoiceInfo?> getOldOrderInvoice(
    RequestOrderUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.oldOrderInvoice.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          OrderInvoiceInfo.fromJson,
          response.data,
          modelName: 'OrderInvoiceInfo',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('OrderInvoiceInfo Error:', error, stackTrace);
      return null;
    }
  }
}
