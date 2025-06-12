import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

enum CallType {
  waiter(1, '呼叫服务员'),
  checkout(2, '呼叫结账'),
  openDesk(3, '呼叫开桌');

  const CallType(this.value, this.name);
  final int value;
  final String name;
}

class CallAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CallAPI');
  Logger get logger => _logger.logger;

  Future<(bool, String)> call({
    required CallType callType,
    required int deskUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.call.h5Path,
        data: {'call_type': callType.value, 'desk_uuid': deskUuid},
        requestOptions: options,
      );
      return (response.code.success, response.message);
    } catch (error, stackTrace) {
      logger.severe('call Error:', error, stackTrace);
      return (false, '呼叫失败'.tr);
    }
  }
}
