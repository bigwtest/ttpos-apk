// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/order/member.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 订单会员列表
class OrderMemberListApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderMemberListApi');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseMemberData?> instant({
    required int saleBillUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.instantOrderGetMemberList.cashierPath,
        queryParameters: {
          'sale_bill_uuid': saleBillUuid,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseMemberData.fromJson,
          response.data,
          modelName: 'ResponseMemberData',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      DialogManager.showToast('点餐 订单会员列表 Api失败 $error');
      logger.severe('num Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseMemberData?> desk({
    required int saleBillUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskOrderGetMemberList.cashierPath,
        queryParameters: {
          'sale_bill_uuid': saleBillUuid,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseMemberData.fromJson,
          response.data,
          modelName: 'ResponseMemberData',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      DialogManager.showToast('桌台 订单会员列表 Api失败 $error');
      logger.severe('numDesk Error:', error, stackTrace);
      return null;
    }
  }
}
