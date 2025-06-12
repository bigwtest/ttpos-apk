import 'package:get/get.dart';
import 'package:pos/api/top_up_list/top_up_refund_api.dart';
import 'package:pos/api/top_up_list/top_up_refund_info_api.dart';
import 'package:pos/components/order/components/dialog/base.dart';
import 'package:pos/controllers/common/cash_box_controller.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_details_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_order_controller.dart';
import 'package:pos/model/request/top_up_list/request_top_up_refund.dart';
import 'package:pos/model/request/top_up_list/request_top_up_uuid.dart';
import 'package:pos/model/response/order/refund_data.dart';
import 'package:pos/model/response/top_up_list/resp_recharge_order_refund_info.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class TopUpRefundController extends GetxController {
  final Log _logger = Log(appName: 'TopUpRefundController');
  Logger get logger => _logger.logger;

  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  final TopUpOrderController topUpOrderController = Get.find<TopUpOrderController>();

  final RxInt _uuid = 0.obs;
  int get uuid => _uuid.value;
  set uuid(int value) => _uuid.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxBool _isRefund = false.obs;
  bool get isRefund => _isRefund.value;
  set isRefund(bool value) => _isRefund.value = value;

  final RxInt _refundType = 1.obs;
  int get refundType => _refundType.value;
  set refundType(int value) => _refundType.value = value;

  final Rx<double> _refundAmount = 0.0.obs;
  double get refundAmount => _refundAmount.value;
  set refundAmount(double value) => _refundAmount.value = value;

  final RxString _nowType = ''.obs;
  String get nowType => _nowType.value;
  set nowType(String value) => _nowType.value = value;

  final Rx<RechargeOrderRefundInfo> _refundInfo = RechargeOrderRefundInfo(
    giftAmount: 0,
    giftPoint: 0,
    paymentRecords: [],
    rechargeAmount: 0,
    rechargeMemberInfo: MemberInfo(
      balance: 0,
      giftBalance: 0,
      points: 0,
    ),
    refundableAmount: 0,
    uuid: 0,
  ).obs;
  RechargeOrderRefundInfo get refundInfo => _refundInfo.value;
  set refundInfo(RechargeOrderRefundInfo value) => _refundInfo.value = value;

  final TopUpRefundInfoAPI _topUpRefundInfoAPI = TopUpRefundInfoAPI();

  Future<RechargeOrderRefundInfo?> getTopUpRefundInfo() async {
    isLoading = true;
    final RequestTopUpUuid data = RequestTopUpUuid(
      uuid: uuid,
    );
    try {
      final response = await _topUpRefundInfoAPI.getTopUpRefundInfo(data);
      refundInfo = response!;
      return response;
    } catch (error, stackTrace) {
      logger.severe('getTopUpDetails Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  final TopUpRefundAPI _topUpRefundAPI = TopUpRefundAPI();

  Future<BaseResponse<dynamic>> refund({
    String? type,
    String? accountName,
    String? accountNo,
    String? bankCode,
  }) async {
    if (refundAmount == 0 && refundType == 2) {
      DialogManager.showToast('请输入退款金额'.tr);
      return BaseResponse(code: -1, message: '请输入退款金额'.tr);
    }
    isRefund = true;
    final RequestTopUpRefund data = RequestTopUpRefund(
      uuid: uuid,
      refundType: refundType,
      refundMoney: refundAmount,
      accountName: accountName ?? '',
      accountNo: accountNo ?? '',
      bankCode: bankCode ?? '',
    );
    try {
      final response = await _topUpRefundAPI.refund(
        data,
        options: ExtraRequestOptions(
          showSuccessToast: true,
        ),
      );

      if (response.code == 0) {
        if (response.data != null) {
          final refundData = RefundData.fromJson(response.data);
          if (refundData.isOpenCashBox == true) {
            CashBoxController.openCashBox();
          }
        }
        // 退款成功，返回上一页并刷新数据
        Get.back();
        topUpOrderController.getTopUpList();

        // 如果是从详情页来的，刷新详情数据
        if (nowType == 'details') {
          Get.find<TopUpDetailsController>().getTopUpDetails();
        }

        // 对于二维码支付方式，额外返回一次
        if (type == 'QrPromptPay') {
          Get.back();
        }
      } else if (response.code == -401) {
        // 认证失败，显示二维码对话框
        Get.find<OrderDialogController>().qrDialog(qrType: 'top_up_refund');
        return response;
      } else {
        // 其他错误情况，显示错误对话框
        dialogController.baseDialog(
          Obx(() {
            return BaseView(
              subtitle: response.message,
              onPressed: () => Get.back(),
              hasCancelButton: false,
              isLoading: isRefund,
            );
          }),
        );
      }
      return response;
    } catch (error, stackTrace) {
      logger.severe('refund Error:', error, stackTrace);
      return BaseResponse(code: -1, message: '退款失败'.tr);
    } finally {
      isRefund = false;
    }
  }

  void handleRefund(int uuid) {
    this.uuid = uuid;
    dialogController.topUpRefundDialog();
  }

  @override
  void onReady() {
    super.onReady();
    getTopUpRefundInfo();
  }
}
