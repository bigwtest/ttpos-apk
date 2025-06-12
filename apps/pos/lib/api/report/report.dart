import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/report/response/report_info.dart';

class ReportAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'ReportAPI');
  Logger get logger => _logger.logger;

  /// 获取交班报备信息
  Future<RespCashierReportInfo?> getReportInfo() async {
    try {
      final response = await _api.getWithRequestOptions(APIPath.reportInfo.cashierPath);
      if (response.code.success) {
        return await response.safeFromJson(
          RespCashierReportInfo.fromJson,
          response.data,
          modelName: 'RespReportInfo',
        );
      }
      return null;
    } catch (e) {
      logger.severe('获取交班报备信息异常: $e');
      return null;
    }
  }

  /// 提交交班报备信息
  Future<bool?> submitReportInfo(String? exceptionRemark, ExtraRequestOptions? options) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.reportInfo.cashierPath,
        data: {
          'exception_remark': exceptionRemark,
        },
        requestOptions: options,
      );
      return response.code.success;
    } catch (e) {
      logger.severe('提交交班报备信息异常: $e');
      return false;
    }
  }
}
