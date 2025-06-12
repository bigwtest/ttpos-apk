import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/print/request/invoice.dart';
import 'package:ttpos_model/print/request/pre_checkout.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class PrintAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'PrintAPI');
  Logger get logger => _logger.logger;

  Future<BaseList<RespPrinterData>?> getPrintList() async {
    try {
      final response = await _api.getWithRequestOptions(APIPath.getPrintList.assistantPath);
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

  /// 桌台打印小票
  Future<RespPrinterData?> printDeskPreCheckout({
    required RespPrinterRequest data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderPrint.assistantPath,
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

      if (response.code == ErrorCode.orderCheckIsSplit.code) {
        DialogManager.closeAllToast();
        DialogManager.showConfirmDialog(
          message: ErrorCode.orderCheckIsSplit.message.tr,
          showCancelButton: false,
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
        APIPath.deskInvoicePrint.assistantPath,
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

      if (response.code == ErrorCode.orderCheckIsSplit.code) {
        DialogManager.closeAllToast();
        DialogManager.showConfirmDialog(
          message: ErrorCode.orderCheckIsSplit.message.tr,
          showCancelButton: false,
        );
      }

      return null;
    } catch (e) {
      logger.severe('打印发票异常: $e');
      return null;
    }
  }
}
