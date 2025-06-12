// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/desk/request/desk/open.dart';
import 'package:ttpos_model/desk/response/desk/open.dart';
import 'package:ttpos_model/desk/response/item/item.dart';

class DeskAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'DeskAPI');
  Logger get logger => _logger.logger;

  Future<Desk?> getDesk({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskGetInfo.h5Path,
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          Desk.fromJson,
          response.data,
          modelName: 'Desk',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getDesk Error:', error, stackTrace);
      return null;
    }
  }

  Future<ResponseDeskOpen?> openDesk(
    RequestDeskOpen request, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOpen.h5Path,
        data: request.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseDeskOpen.fromJson,
          response.data,
          modelName: 'ResponseDeskOpen',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('openDesk Error:', error, stackTrace);
      return null;
    }
  }
}
