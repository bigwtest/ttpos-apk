import 'package:get/get.dart';
import 'package:kds/api/accept/history_list_api.dart';
import 'package:kds/model/response/resp_history_list.dart';
import 'package:ttpos_logger/logger.dart';

class AcceptHistoryController extends GetxController {
  final Log _logger = Log(appName: 'AcceptHistoryController');
  Logger get logger => _logger.logger;

  final RxList<RespProductionGroup> _historyList = <RespProductionGroup>[].obs;
  List<RespProductionGroup> get historyList => _historyList;
  set historyList(List<RespProductionGroup> value) => _historyList.assignAll(value);

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final HistoryListAPI _historyListAPI = HistoryListAPI();

  /// 获取历史列表
  Future<ResponseHistoryList?> getHistoryList() async {
    try {
      isLoading = true;
      final response = await _historyListAPI.getHistoryList();
      historyList = response?.list ?? [];
      return response;
    } catch (error, stackTrace) {
      logger.severe('getHistoryList Error:', error, stackTrace);
      return null;
    } finally {
      isLoading = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getHistoryList();
  }
}
