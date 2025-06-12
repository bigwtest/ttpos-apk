// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/carousel/carousel_item.dart';

class CarouselAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CarouselAPI');
  Logger get logger => _logger.logger;

  Future<List<ResponseCarouselItem>?> getCarouselList({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.baseGetAd.cashierPath,
        requestOptions: options,
      );
      if (response.code.success) {
        final result = await response.safeFromJsonList(
          ResponseCarouselItem.fromJson,
          response.data,
          modelName: 'ResponseCarouselItem',
          options: options,
          logger: logger,
        );
        return result?.list;
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getCarouselList Error:', error, stackTrace);
      return null;
    }
  }
}
