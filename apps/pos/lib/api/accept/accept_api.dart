import 'package:get/get.dart';
import 'package:pos/model/request/accept/list.dart';
import 'package:pos/model/response/accept/detail.dart';
import 'package:pos/model/response/accept/list.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/response/check.dart';
import 'package:ttpos_shared/shared.dart';

class AcceptAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'AcceptAPI');
  Logger get logger => _logger.logger;

  Future<AcceptList?> getAcceptList(
    RequestAcceptList queryParams, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.h5OrderGetList.cashierPath,
        queryParameters: queryParams.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          AcceptList.fromJson,
          response.data,
          modelName: 'AcceptList',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getAcceptList Error:', error, stackTrace);
      return null;
    }
  }

  // 获取订单详情
  Future<ResponseAcceptDetail?> getAcceptDetail(
    int orderUuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.h5OrderGetDetail.cashierPath,
        queryParameters: {'h5_order_uuid': orderUuid},
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseAcceptDetail.fromJson,
          response.data,
          modelName: 'ResponseAcceptDetail',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getAcceptDetail Error:', error, stackTrace);
      return null;
    }
  }

  //接单
  Future<(bool, OrderCheck?, ErrorCode?, String?)> acceptOrder(
    int orderUuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.h5OrderAccept.cashierPath,
        data: {'h5_order_uuid': orderUuid},
        requestOptions: options,
      );

      if (response.code.success) {
        return (
          true,
          await response.safeFromJson(
            OrderCheck.fromJson,
            response.data,
            modelName: 'OrderCheck',
            options: options,
            logger: logger,
          ),
          null,
          null,
        );
      } else if (response.code.isShowOrderCheckDialog) {
        return (
          false,
          await response.safeFromJson(
            OrderCheck.fromJson,
            response.data,
            modelName: 'OrderCheck',
            options: options,
            logger: logger,
          ),
          ErrorCode.fromCode(response.code),
          null,
        );
      }
      return (false, null, ErrorCode.fromCode(response.code), response.message);
    } catch (error, stackTrace) {
      logger.severe('acceptOrder Error:', error, stackTrace);
      return (false, null, null, null);
    }
  }

  // 拒单
  Future<bool> rejectOrder(
    int orderUuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.h5OrderReject.cashierPath,
        data: {'h5_order_uuid': orderUuid},
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('rejectOrder Error:', error, stackTrace);
      return false;
    }
  }
}
