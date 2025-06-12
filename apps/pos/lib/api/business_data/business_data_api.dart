import 'package:get/get.dart';
import 'package:pos/model/request/business_data/req_print.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class BusinessDataApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'PrintAPI');
  Logger get logger => _logger.logger;

  Future<RespPrinterData?> handlePrint({
    ReqBusinessDataPrint? data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.businessDataPrint.cashierPath,
        data: data?.toJson(),
        requestOptions: options,
      );
      return response.code.success
          ? await response.safeFromJson(
              RespPrinterData.fromJson,
              response.data,
              modelName: 'BusinessDataPrint',
            )
          : null;
    } catch (e) {
      logger.severe('上报打印机数据异常: $e');
      return null;
    }
  }
}
