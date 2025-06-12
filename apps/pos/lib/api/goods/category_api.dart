// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
// Model imports:
import 'package:ttpos_model/goods/response/category/category.dart';

class CategoryAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CategoryAPI');
  Logger get logger => _logger.logger;

  Future<List<GoodsCategory>?> getCategoryList({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.productGetCategoryList.cashierPath,
      );
      if (response.code.success) {
        final result = await response.safeFromJsonList(
          GoodsCategory.fromJson,
          response.data,
          modelName: 'GoodsCategory',
          options: options,
          logger: logger,
        );
        return result?.list;
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getCategoryList Error:', error, stackTrace);
      return null;
    }
  }
}
