import 'package:assistant/api/cashier/cashier_api.dart';
import 'package:assistant/model/request/cashier/bind_cashier.dart';
import 'package:assistant/model/response/cashier/cashier_info.dart';
import 'package:assistant/routers/name.dart';
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class CashierController extends GetxController {
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  final RxList<ResponseCashierInfo> _cashierList = <ResponseCashierInfo>[].obs;
  List<ResponseCashierInfo> get cashierList => _cashierList.toList();
  set cashierList(List<ResponseCashierInfo> value) {
    // 检查两个列表是否相等
    final listEquality = ListEquality<ResponseCashierInfo>();
    bool areEqual = listEquality.equals(_cashierList, value);
    if (areEqual) return;
    _cashierList.assignAll(value);
  }

  //
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) {
    _isLoading.value = value;
  }

  //
  final RxBool _isCashierLoading = false.obs;
  bool get isCashierLoading => _isCashierLoading.value;
  set isCashierLoading(bool value) {
    _isCashierLoading.value = value;
  }

  //
  final Rx<RequestBindCashier> _formData = RequestBindCashier(
    cashierUuid: 0,
    deviceId: '',
  ).obs;
  RequestBindCashier get formData => _formData.value;
  set formData(RequestBindCashier value) {
    _formData.value = value;
  }

  @override
  void onInit() async {
    WebSocketService.to.dispose();
    RefreshService.to.stopTimer();

    if (!Get.isRegistered<SharedPreferencesWithCache>()) throw Exception('缓存未初始化');
    final storage = Get.find<SharedPreferencesWithCache>();
    // NOTE: 如果弹出绑定收银机弹窗，则移除锁屏状态, 因为没有完成登录逻辑
    await storage.remove(StorageKey.isLockScreen.asString);

    final assistantToken = storage.getString(StorageKey.authTokenAssistant.asString);
    if (assistantToken == null || assistantToken.isEmpty) {
      // NOTE: 如果助手的 token 不存在，则跳转登录页面
      Future.microtask(() {
        Get.offAllNamed(RouteNames.login);
      });

      return;
    }

    if (!Get.isRegistered<TokenController>()) throw Exception('TokenController 未初始化');
    final tokenController = Get.find<TokenController>();

    // NOTE: 如果弹出绑定收银机弹窗，则意味着使用助手的 token 来请求
    await tokenController.saveToken(assistantToken);

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    loadOnlineCashiers();
  }

  @override
  void onClose() {
    // if (!Get.isRegistered<SharedPreferencesWithCache>()) throw Exception('缓存未初始化');
    // final storage = Get.find<SharedPreferencesWithCache>();

    // final isSelectCashier = storage.getInt(StorageKey.authIsSelectCashier.asString) == 1;
    // if (!isSelectCashier) {
    //   Future.microtask(() {
    //     Get.offAllNamed(RouteNames.login);
    //   });
    // }

    super.onClose();
  }

  Future<void> handleRefresh() async {
    if (isCashierLoading) return;
    try {
      isCashierLoading = true;
      final res = await loadOnlineCashiers();
      return res;
    } catch (error, stackTrace) {
      _logger.severe('handleRefresh Error:', error, stackTrace);
    } finally {
      isCashierLoading = false;
    }
  }

  Future<List<ResponseCashierInfo>> getOnlineCashiersFromAPI() async {
    try {
      final res = await CashierAPI().getOnlineCashiers();
      return res?.list ?? [];
    } catch (error, stackTrace) {
      _logger.severe('getOnlineCashiersFromAPI Error:', error, stackTrace);
      return [];
    }
  }

  Future<void> loadOnlineCashiers() async {
    try {
      isCashierLoading = true;
      final list = await getOnlineCashiersFromAPI();
      cashierList = list;
      // 默认值
      if (list.isNotEmpty) {
        final isExist = list.any((item) => item.cashierUuid == formData.cashierUuid);
        if (!isExist) handleDetail(list[0]);
      } else {
        formData = RequestBindCashier(
          cashierUuid: 0,
          deviceId: '',
        );
      }
    } catch (error, stackTrace) {
      _logger.severe('loadOnlineCashiers Error:', error, stackTrace);
    } finally {
      isCashierLoading = false;
    }
  }

  Future<bool> handleConfirm() async {
    if (isLoading) return false;
    if (cashierList.isEmpty) {
      DialogManager.showToast('暂无收银机'.tr);
      return false;
    }
    if (formData.cashierUuid == 0) {
      DialogManager.showToast('请选择收银机'.tr);
      return false;
    }
    try {
      isLoading = true;

      if (!Get.isRegistered<SharedPreferencesWithCache>()) throw Exception('缓存未初始化');
      final storage = Get.find<SharedPreferencesWithCache>();
      final assistantToken = storage.getString(StorageKey.authTokenAssistant.asString);

      if (assistantToken == null || assistantToken.isEmpty) {
        // NOTE: 如果助手的 token 不存在，则跳转登录页面
        Future.microtask(() {
          Get.offAllNamed(RouteNames.login);
        });
        return false;
      }

      if (!Get.isRegistered<TokenController>()) throw Exception('TokenController 未初始化');
      final tokenController = Get.find<TokenController>();

      final res = await CashierAPI().fetchBindCashier(
        formData,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );

      final token = res?.token;
      if (token == null || token.isEmpty) return false;
      // 替换为已绑定的 token
      await tokenController.saveToken(token);
      // 记录标识，已经选择过收银机
      await storage.setInt(StorageKey.authIsSelectCashier.asString, 1);
      await Future.delayed(const Duration(milliseconds: 300));

      RefreshService.to.fire();
      RefreshService.to.startTimer();

      // NOTE: 如果当前页面不是收银机的路由，则初始化 WebSocket
      if (Get.currentRoute != RouteNames.cashier) {
        WebSocketService.to.init(
          token: assistantToken,
          client: WebSocketClient.assistant,
          showToast: false,
        );
      }

      // 执行下一步，有可能跳转页面或者关闭弹窗
      return true;
    } catch (error, stackTrace) {
      _logger.severe('handleConfirm Error:', error, stackTrace);
      return false;
    } finally {
      isLoading = false;
    }
  }

  void handleDetail(ResponseCashierInfo val) {
    formData = RequestBindCashier(
      cashierUuid: val.cashierUuid,
      deviceId: val.deviceId,
    );
  }
}
