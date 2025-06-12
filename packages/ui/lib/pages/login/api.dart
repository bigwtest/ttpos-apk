import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/common/response/captcha.dart';

class AuthAPI {
  final API _api = Get.find<APIController>().api;

  // 获取验证码
  Future<ResponseCaptcha?> getCaptcha() async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.passportCaptcha.path,
        requestOptions: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      if (response.code.success) {
        return ResponseCaptcha.fromJson(response.data);
      }
      return null;
    } catch (error, stackTrace) {
      debugPrint('Get Captcha Error: $error\n$stackTrace');
      return null;
    }
  }
}
