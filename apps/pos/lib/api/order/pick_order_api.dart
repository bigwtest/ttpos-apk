import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:pos/model/response/pick_order/pick_order.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';

class PickOrderAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'PickOrderAPI');
  Logger get logger => _logger.logger;

  Future<BaseList<ResponsePickOrder>?> getPickOrders(
    BasePageQuery data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.instantOrderList.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        // 判断返回数据是否为空
        if (response.data == null || (response.data as Map).isEmpty) {
          return null;
        }
        return await response.safeFromJsonList(
          ResponsePickOrder.fromJson,
          response.data,
          modelName: 'ResponsePickOrder',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getPickOrders Error:', error, stackTrace);
      return null;
    }
  }

  // 取单
  Future<ResponseCart?> pickerOrder(
    int saleBillUuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderShow.cashierPath,
        data: {
          "sale_bill_uuid": saleBillUuid,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        // 判断返回数据是否为空
        if (response.data == null || (response.data as Map).isEmpty) {
          return null;
        }
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('pickOrder Error:', error, stackTrace);
      return null;
    }
  }
}
