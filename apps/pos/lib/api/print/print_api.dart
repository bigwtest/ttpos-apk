import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/request/recharge.dart';
import 'package:ttpos_model/print/request/invoice.dart';
import 'package:ttpos_model/print/request/pre_checkout.dart';
import 'package:ttpos_model/print/request/report.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class PrintAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'PrintAPI');
  Logger get logger => _logger.logger;

  Future<BaseList<RespPrinterData>?> getPrintList() async {
    try {
      final response = await _api.getWithRequestOptions(APIPath.getPrintList.cashierPath);
      if (response.code.success) {
        return await response.safeFromJsonList(
          RespPrinterData.fromJson,
          response.data,
          modelName: 'RespPrinterDataList',
        );
      }
      return null;
    } catch (e) {
      logger.severe('获取打印列表异常: $e');
      return null;
    }
  }

  Future<bool> reportPrinterData({
    required List<ReqReportPrinterData> data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.reportPrinterData.cashierPath,
        data: {'data': data.map((e) => e.toJson()).toList()},
        requestOptions: options,
      );
      return response.code.success;
    } catch (e) {
      logger.severe('上报打印机数据异常: $e');
      return false;
    }
  }

  /// 桌台打印小票
  Future<RespPrinterData?> printDeskPreCheckout({
    required RespPrinterRequest data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderPrint.cashierPath,
        data: data.toJson(),
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

  Future<RespPrinterData?> printInstantPreCheckout({
    required RespPrinterRequest data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderPrint.cashierPath,
        data: data.toJson(),
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

  Future<RespPrinterData?> deskPrintInvoice({
    required InvoicePrintRequest data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskInvoicePrint.cashierPath,
        data: data.toJson(),
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
      logger.severe('打印发票异常: $e');
      return null;
    }
  }

  Future<RespPrinterData?> instantPrintInvoice({
    required InvoicePrintRequest data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantInvoicePrint.cashierPath,
        data: data.toJson(),
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
      logger.severe('打印发票异常: $e');
      return null;
    }
  }

  Future<RespPrinterData?> openCashBox() async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.openCashBox.cashierPath,
      );
      if (response.code.success) {
        logger.info('打印机打开钱箱响应: ${response.data}');
        return await response.safeFromJson(
          RespPrinterData.fromJson,
          response.data,
          modelName: 'RespPrinterData',
          logger: logger,
        );
      }

      return null;
    } catch (e) {
      logger.severe('打印机打开钱箱异常: $e');
      return null;
    }
  }

  Future<RespPrinterData?> printRechargeReceipt({
    required RequestPrintRechargeReceipt data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.topUpPrint.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );

      if (response.code.success) {
        return await response.safeFromJson(
          RespPrinterData.fromJson,
          response.data,
          modelName: 'RespPrinterData',
          logger: logger,
        );
      }
      return null;
    } catch (e) {
      logger.severe('打印会员充值单异常: $e');
      return null;
    }
  }
}
