import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/check.dart';
import 'package:ttpos_model/order/response/check.dart';
import 'package:ttpos_model/payment/request/cancel.dart';
import 'package:ttpos_model/payment/request/create.dart';
import 'package:ttpos_model/payment/request/member.dart';
import 'package:ttpos_model/payment/request/qrcode.dart';
import 'package:ttpos_model/payment/request/uuid.dart';
import 'package:ttpos_model/payment/request/zero_rule.dart';
import 'package:ttpos_model/payment/response/finish.dart';
import 'package:ttpos_model/payment/response/info.dart';
import 'package:ttpos_model/payment/response/member.dart';
import 'package:ttpos_model/payment/response/qrcode.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

part 'mixin/cancel.dart';
part 'mixin/check.dart';
part 'mixin/create.dart';
part 'mixin/finish.dart';
part 'mixin/info.dart';
part 'mixin/member.dart';
part 'mixin/qrcode.dart';
part 'mixin/zero_rule.dart';

class CheckoutAPI
    with
        MixinCheck,
        MixinInfo,
        MixinOrderCreate,
        MixinOrderCancel,
        MixinZeroRule,
        MixinOrderFinish,
        MixinMember,
        MixinQrcode {
  @override
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CheckoutAPI');
  @override
  Logger get logger => _logger.logger;
}
