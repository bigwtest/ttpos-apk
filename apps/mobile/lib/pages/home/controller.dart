import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mobile/api/auth/auth_api.dart';
import 'package:mobile/controllers/base/main_controller.dart';
import 'package:mobile/pages/home/main.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class HomePageController extends GetxController {
  final TokenController _tokenController = Get.find<TokenController>();
  String? get token => _tokenController.token;

  final Rx<bool> _isScanning = Rx<bool>(false);
  bool get isScanning => _isScanning.value;
  set isScanning(bool value) {
    _isScanning.value = value;
  }

  final Rx<Desk?> _desk = Rx<Desk?>(null);
  Desk? get desk => _desk.value;
  void _setDesk(Desk? desk) {
    _desk.value = desk;
    _updateTimestamp = DateTime.now().millisecondsSinceEpoch;

    _checkIfShowTips();
  }

  void _checkIfShowTips() {
    debugPrint('checkIfShowTips: ${Get.rootDelegate.currentConfiguration?.locationString}');
    // TODO: 提示用户已开桌
  }

  Future<Desk?> loadDataFromAPI({bool forceRefresh = false}) async {
    if (token == null || token?.isEmpty == true) {
      debugPrint('token 为空，跳过请求');
      if (isScanning == false) {
        DialogManager.showErrorDialog(
          title: '扫码失败'.tr,
          message: '二维码已失效，请联系商家'.tr,
        );
        isScanning = true;
      }
      return null;
    }
    final result = await AuthAPI().getBaseInfo();
    if (_updateTimestamp > _timerExecuteTimestamp && !forceRefresh) return null;

    if (result != null) {
      if (Get.isRegistered<BaseInfoController>()) {
        Get.find<BaseInfoController>().updateBaseInfo(result);
      }
      _setDesk(result.desk);

      if (result.desk.isAvailable == true || result.desk.isWait == true) {
        if (Get.rootDelegate.currentConfiguration?.locationString == HomeRoutes.desk.homeRoute) {
          Future.microtask(() {
            Get.rootDelegate.offNamed(HomeRoutes.open.homeRoute);
          });
        }
      }
    }

    return result?.desk;
  }

  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _updateTimestamp = 0;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;
  Worker? _refreshWorker;

  void _startTimer() {
    _stopTimer();

    _timer = Timer.periodic(
      // NOTE: 接了 websocket 后, 30s 轮询一次
      const Duration(seconds: 10),
      (timer) {
        debugPrint('桌台详情定时刷新任务 ${timer.tick}');
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        loadDataFromAPI();
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void onInit() {
    super.onInit();

    debugPrint('HomePageController onInit, token: ${Get.parameters['token']}');
    if (Get.parameters['token'] != null) {
      _tokenController.token = Get.parameters['token'];
    }
  }

  @override
  void onReady() {
    super.onReady();

    loadDataFromAPI();

    _startTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('appLifeCycleStartWorker 收到 startTimerSignal 信号 [HomePageController]');
        _startTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('appLifeCycleStopWorker 收到 stopTimerSignal 信号 [HomePageController]');
        _stopTimer();
      },
    );

    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) async {
        debugPrint('refreshWorker 收到 refreshSignal 信号 [HomePageController]');
        await Future.wait([
          loadDataFromAPI(forceRefresh: true),
        ]);
      },
    );
  }

  @override
  void onClose() {
    _stopTimer();

    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    _refreshWorker?.dispose();
    _refreshWorker = null;

    super.onClose();
  }
}
