import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/request/add_member.dart';
import 'package:ttpos_model/member/response/member_level.dart';
import 'package:ttpos_model/member/response/search_member.dart';

class MemberAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'MemberAPI');
  Logger get logger => _logger.logger;

  // 获取会员等级列表
  Future<List<ResponseMemberLevel>> getMemberLevelList({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.memberGetMemberLevelList.assistantPath,
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) {
          return [];
        }
        final result = await response.safeFromJsonList(
          ResponseMemberLevel.fromJson,
          response.data,
          modelName: 'ResponseMemberLevel',
          options: options,
          logger: logger,
        );
        return result?.list ?? [];
      }
      return [];
    } catch (error, stackTrace) {
      logger.severe('getMemberLevelList Error:', error, stackTrace);
      return [];
    }
  }

  // 新增会员
  Future<bool> createMember(
    RequestAddMember data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.memberAddMember.assistantPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('createMember Error:', error, stackTrace);
      return false;
    }
  }

  // 模糊搜索会员列表
  Future<BaseList<SearchMember>?> searchMemberList(
    String keyword, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.memberSearchMember.assistantPath,
        queryParameters: {'keyword': keyword},
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          SearchMember.fromJson,
          response.data,
          modelName: 'SearchMember',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('searchMemberList Error:', error, stackTrace);
      return null;
    }
  }
}
