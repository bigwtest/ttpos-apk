import 'package:get/get.dart';
import 'package:pos/api/top_up_list/top_up_check_reverse_settle_api.dart';
import 'package:pos/api/top_up_list/top_up_reverse_settle_api.dart';
import 'package:pos/controllers/member/recharge_controller.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_order_controller.dart';
import 'package:pos/model/request/top_up_list/request_top_up_uuid.dart';
import 'package:pos/model/response/top_up_list/resp_recharge_order_item.dart';
import 'package:pos/model/response/top_up_list/top_up_reverse_settle_info.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class TopUpReverseController extends GetxController {
  final Log _logger = Log(appName: 'TopUpReverseController');
  Logger get logger => _logger.logger;

  final RxInt _uuid = 0.obs;
  int get uuid => _uuid.value;
  set uuid(int value) => _uuid.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxBool _isReverseSettle = false.obs;
  bool get isReverseSettle => _isReverseSettle.value;
  set isReverseSettle(bool value) => _isReverseSettle.value = value;

  final Rx<TopUpReverseSettleInfo> _reverseSettleInfo = TopUpReverseSettleInfo(
    status: 0,
    message: '',
    memberInfo: MemberInfo(
      balance: 0,
      giftBalance: 0,
      nickname: '',
      points: 0,
      uuid: 0,
    ),
  ).obs;
  TopUpReverseSettleInfo get reverseSettleInfo => _reverseSettleInfo.value;
  set reverseSettleInfo(TopUpReverseSettleInfo? value) => _reverseSettleInfo.value = value!;

  final TopUpCheckReverseSettleAPI _topUpCheckReverseSettleAPI = TopUpCheckReverseSettleAPI();

  Future<TopUpReverseSettleInfo?> getTopUpReverseSettleInfo() async {
    isLoading = true;
    final RequestTopUpUuid data = RequestTopUpUuid(
      uuid: uuid,
    );
    try {
      final response = await _topUpCheckReverseSettleAPI.checkReverseSettle(data);
      reverseSettleInfo = response;
      return response;
    } catch (error, stackTrace) {
      logger.severe('TopUpReverseController Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  final TopUpReverseSettleAPI _topUpReverseSettleAPI = TopUpReverseSettleAPI();
  final TopUpOrderController topUpOrderController = Get.find<TopUpOrderController>();
  Future<dynamic> reverseSettle() async {
    isReverseSettle = true;
    final RequestTopUpUuid data = RequestTopUpUuid(
      uuid: uuid,
    );
    try {
      final response = await _topUpReverseSettleAPI.reverseSettle(
        data,
        options: ExtraRequestOptions(
          showSuccessToast: true,
          showFailToast: true,
        ),
      );
      if (response.code == 0) {
        topUpOrderController.search();
        MemberRechargeController.onRechargeTap();
      }
      Get.back();
      return response;
    } catch (error, stackTrace) {
      logger.severe('TopUpReverseController Error:', error, stackTrace);
      return null;
    } finally {
      isReverseSettle = false;
    }
  }

  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  void handleReverse(RespRechargeOrderItem item) {
    uuid = item.uuid;
    getTopUpReverseSettleInfo();
    dialogController.topUpReverseCheckoutDialog(item: item);
  }
}
