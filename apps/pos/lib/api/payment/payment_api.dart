import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/payment/response/method.dart';

class PaymentAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'PaymentAPI');
  Logger get logger => _logger.logger;

  Future<BaseList<PaymentMethod>?> getPaymentMethodList({
    String? type,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.paymentGetList.cashierPath,
        queryParameters: type == null
            ? null
            : {
                'type': type,
              },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          PaymentMethod.fromJson,
          response.data,
          modelName: 'PaymentMethod',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getPaymentMethodList Error:', error, stackTrace);
      return null;
    }
  }
}
