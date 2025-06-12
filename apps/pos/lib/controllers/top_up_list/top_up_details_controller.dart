import 'package:get/get.dart';
import 'package:pos/api/top_up_list/top_up_details_api.dart';
import 'package:pos/model/request/top_up_list/request_top_up_uuid.dart';
import 'package:pos/model/response/top_up_details/cashier.dart';
import 'package:pos/model/response/top_up_details/extra.dart';
import 'package:pos/model/response/top_up_details/member.dart';
import 'package:pos/model/response/top_up_details/operation_log.dart';
import 'package:pos/model/response/top_up_details/resp_recharge_order_operation_log_item.dart';
import 'package:pos/model/response/top_up_details/top_up_details.dart';
import 'package:pos/model/view/operation_log/operation_log.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/number/safety_number.dart';

class TopUpDetailsController extends GetxController {
  final Log _logger = Log(appName: 'TopUpDetailsController');
  Logger get logger => _logger.logger;

  final RxInt _uuid = 0.obs;
  int get uuid => _uuid.value;
  set uuid(int value) => _uuid.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final Rx<TopUpDetails> _topUpDetails = TopUpDetails(
    amount: SafetyNumber.string('0'),
    cashier: Cashier(
      realName: '',
    ),
    chargeDue: SafetyNumber.string('0'),
    createTime: 0,
    extra: Extra(
      isCellCancel: false,
      isCellRefund: false,
      isCellReverseSettle: false,
    ),
    giftAmount: SafetyNumber.string('0'),
    giftPoint: SafetyNumber.string('0'),
    member: Member(
      nickname: '',
      uuid: 0,
    ),
    operationLog: OperationLog(
      list: [],
    ),
    orderNo: '',
    paymentMethods: [],
    paymentTime: 0,
    rechargeAmount: SafetyNumber.string('0'),
    status: 0,
    uuid: 0,
  ).obs;
  TopUpDetails get topUpDetails => _topUpDetails.value;
  set topUpDetails(TopUpDetails value) => _topUpDetails.value = value;

  final RxList<RespRechargeOrderOperationLogItem> _operationLogList = <RespRechargeOrderOperationLogItem>[].obs;
  set operationLogList(List<RespRechargeOrderOperationLogItem> value) => _operationLogList.value = value;

  List<OperationLogView> get operationLog => _operationLogList
      .map(
        (item) => OperationLogView(
          action: item.client,
          time: item.createTime,
          remark: item.description,
          saleBillUuid: 0,
          saleOrderUuid: 0,
          source: '${item.realName} (${item.username}) ${item.client}',
          uuid: 0,
        ),
      )
      .toList();

  final TopUpDetailsAPI _topUpDetailsAPI = TopUpDetailsAPI();

  Future<TopUpDetails?> getTopUpDetails() async {
    isLoading = true;
    final RequestTopUpUuid data = RequestTopUpUuid(
      uuid: uuid,
    );
    try {
      final response = await _topUpDetailsAPI.getTopUpDetails(data);
      topUpDetails = response!;
      operationLogList = response.operationLog.list;
      return response;
    } catch (error, stackTrace) {
      logger.severe('getTopUpDetails Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }
}
