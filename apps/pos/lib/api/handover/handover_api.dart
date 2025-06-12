// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/handover/form.dart';
import 'package:pos/model/response/handover/handover.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class HandoverAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'HandoverAPI');
  Logger get logger => _logger.logger;

  // 获取交班信息
  Future<RespGetHandoverInfo?> getHandover({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.handover.cashierPath,
        requestOptions: options,
      );

      if (response.code.success) {
        return await response.safeFromJson(
          RespGetHandoverInfo.fromJson,
          response.data,
          modelName: 'RespGetHandoverInfo',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Get Handover Error:', error, stackTrace);
      return null;
    }
  }

  // 执行交班
  Future<RespPostHandoverInfo?> execHandover(
    RequestHandoverForm data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.handover.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          RespPostHandoverInfo.fromJson,
          response.data,
          modelName: 'RespPostHandoverInfo',
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Exec Handover Error:', error, stackTrace);
      return null;
    }
  }

  // 获取上一班交班信息
  // Future<ResponseLastShiftReserve?> getExceptionRemark({
  //   ExtraRequestOptions? options,
  // }) async {
  //   try {
  //     final response = await _api.getWithRequestOptions(
  //       APIPath.handoverGetExceptionRemark.cashierPath,
  //       requestOptions: options,
  //     );
  //     if (response.code.success) {
  //       return await response.safeFromJson(
  //         ResponseLastShiftReserve.fromJson,
  //         response.data,
  //         modelName: 'ResponseLastShiftReserve',
  //         options: options,
  //         logger: logger,
  //       );
  //     }

  //     return null;
  //   } catch (error, stackTrace) {
  //     logger.severe('Get Exception Remark Error:', error, stackTrace);
  //     return null;
  //   }
  // }

  // 报备上一班交班信息
  Future<bool> reportExceptionRemark(
    RequestReportExceptionRemarkForm data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.handoverReportExceptionRemark.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Report Exception Remark Error:', error, stackTrace);
      return false;
    }
  }

  // 中途存入现金
  Future<bool> depositCash(
    RequestDepositCashForm data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.handoverDepositCash.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Deposit Cash Error:', error, stackTrace);
      return false;
    }
  }

  // 中途取出现金
  Future<bool> withdrawCash(
    RequestWithdrawCashForm data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.handoverWithdrawCash.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Withdraw Cash Error:', error, stackTrace);
      return false;
    }
  }

  Future<RespPrinterData?> handlePrint(
    RequestHandoverPrintForm data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.handoverPrint.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success
          ? await response.safeFromJson(
              RespPrinterData.fromJson,
              response.data,
              modelName: 'RespPrinterData',
              options: options,
              logger: logger,
            )
          : null;
    } catch (error, stackTrace) {
      logger.severe('Print Error:', error, stackTrace);
      return null;
    }
  }
}
