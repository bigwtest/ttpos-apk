// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/request/uuid.dart';
import 'package:ttpos_model/desk/request/desk/close.dart';
import 'package:ttpos_model/desk/request/desk/open.dart';
import 'package:ttpos_model/desk/response/category/category.dart';
import 'package:ttpos_model/desk/response/desk/open.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/desk/response/list/list.dart';

class DeskAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'DeskAPI');
  Logger get logger => _logger.logger;

  Future<DeskList?> getDeskList({
    int status = -1,
    int isBuffet = -1,
    ExtraRequestOptions? options,
    MetaRequest? meta,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskGetList.assistantPath,
        queryParameters: {
          'status': status,
          'is_buffet': isBuffet,
          ...(meta ??
                  MetaRequest(
                    pageNo: 1,
                    pageSize: 1000,
                  ))
              .toJson(),
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          DeskList.fromJson,
          response.data,
          modelName: 'DeskList',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getDeskList Error:', error, stackTrace);
      return null;
    }
  }

  Future<DeskCategory?> getDeskCategory({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskGetCategory.assistantPath,
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          DeskCategory.fromJson,
          response.data,
          modelName: 'DeskCategory',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getDeskCategory Error:', error, stackTrace);
      return null;
    }
  }

  Future<Desk?> getDesk(
    int uuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskGetInfo.assistantPath,
        queryParameters: RequestUuid(uuid: uuid).toJson(),
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
        APIPath.deskOpen.assistantPath,
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

  Future<bool> closeDesk(
    RequestDeskClose request, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskClose.assistantPath,
        data: request.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('closeDesk Error:', error, stackTrace);
      return false;
    }
  }

  Future<bool> cleanDesk(
    int uuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskClean.assistantPath,
        data: RequestUuid(uuid: uuid).toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('cleanDesk Error:', error, stackTrace);
      return false;
    }
  }
}
