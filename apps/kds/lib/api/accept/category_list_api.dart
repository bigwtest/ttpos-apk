import 'package:get/get.dart';
import 'package:kds/model/response/resp_category_list.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class CategoryListAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CategoryListAPI');
  Logger get logger => _logger.logger;

  //获取分类
  Future<List<ResponseCategory>?> getCategoryList({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.productGetCategoryList.kitchenPath,
      );
      if (response.code.success) {
        final result = await response.safeFromJsonList(
          ResponseCategory.fromJson,
          response.data,
          modelName: 'ResponseCategory',
          options: options,
          logger: logger,
        );
        return result?.list;
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('CategoryListAPI Error:', error, stackTrace);
      return null;
    }
  }
}
