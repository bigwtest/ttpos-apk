// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/goods/response/product/buffet.dart';
// Model imports:
import 'package:ttpos_model/goods/response/product/product.dart';

class GoodsAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'GoodsAPI');
  Logger get logger => _logger.logger;

  // 获取商品基础信息
  Future<BaseList<GoodsProduct>?> getGoodsList(
    BasePageQuery data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.productGetList.assistantPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          GoodsProduct.fromJson,
          response.data,
          modelName: 'GoodsProduct',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getGoodsList Error:', error, stackTrace);
      return null;
    }
  }

  // 获取自助餐商品列表
  Future<BaseList<GoodsBuffet>?> getBuffetGoodsList(int saleBillUuid) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.productGetBuffetList.assistantPath,
        queryParameters: {
          'sale_bill_uuid': saleBillUuid,
        },
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          GoodsBuffet.fromJson,
          response.data,
          modelName: 'GoodsBuffet',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getBuffetGoodsList Error:', error, stackTrace);
      return null;
    }
  }
}
