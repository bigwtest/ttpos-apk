import 'package:get/get.dart';
import 'package:pos/api/top_up_list/top_up_cancel_api.dart';
import 'package:pos/components/order/components/dialog/base.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_order_controller.dart';
import 'package:pos/model/request/top_up_list/request_top_up_uuid.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class TopUpCancelController extends GetxController {
  final Log _logger = Log(appName: 'TopUpCancelController');
  Logger get logger => _logger.logger;

  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  final TopUpOrderController topUpOrderController = Get.find<TopUpOrderController>();

  final RxInt _uuid = 0.obs;
  int get uuid => _uuid.value;
  set uuid(int value) => _uuid.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final TopUpCancelAPI _topUpCancelAPI = TopUpCancelAPI();

  Future<dynamic> cancel() async {
    isLoading = true;
    final RequestTopUpUuid data = RequestTopUpUuid(
      uuid: uuid,
    );
    try {
      final response = await _topUpCancelAPI.cancel(
        data,
        options: ExtraRequestOptions(
          showSuccessToast: true,
        ),
      );

      if (response.code == 0) {
        Get.back();
        topUpOrderController.getTopUpList();
      } else {
        Get.back();
        dialogController.baseDialog(
          Obx(() {
            return BaseView(
              subtitle: response.message,
              onPressed: () {
                Get.back();
              },
              hasCancelButton: false,
              isLoading: isLoading,
            );
          }),
        );
      }
      return response;
    } catch (error, stackTrace) {
      logger.severe('cancel Error:', error, stackTrace);
      return false;
    } finally {
      isLoading = false;
    }
  }

  void handleCancel(int uuid) {
    this.uuid = uuid;
    dialogController.baseDialog(
      Obx(() {
        return BaseView(
          subtitle: '是否取消此订单？'.tr,
          onPressed: () {
            cancel();
          },
          isLoading: isLoading,
        );
      }),
    );
  }
}
