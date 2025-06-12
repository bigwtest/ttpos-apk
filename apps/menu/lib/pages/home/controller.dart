import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:menu/api/auth/auth_api.dart';
import 'package:menu/controllers/base/main_controller.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';

class HomePageController extends GetxController {
  final TokenController _tokenController = Get.find<TokenController>();
  String? get token => _tokenController.token;

  Future<void> loadDataFromAPI({bool forceRefresh = false}) async {
    if (token == null || token?.isEmpty == true) {
      debugPrint('token 为空，跳过请求');
      return;
    }
    final result = await AuthAPI().getBaseInfo();
    if (_updateTimestamp > _timerExecuteTimestamp && !forceRefresh) return;

    if (result != null) {
      if (Get.isRegistered<BaseInfoController>()) {
        Get.find<BaseInfoController>().updateBaseInfo(result);
      }
    }

    _updateTimestamp = DateTime.now().millisecondsSinceEpoch;
  }

  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _updateTimestamp = 0;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;
  Worker? _refreshWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(
      // NOTE: 接了 websocket 后, 30s 轮询一次
      const Duration(seconds: 30),
      (timer) {
        debugPrint('定时刷新任务 ${timer.tick}');
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
          loadDataFromAPI(),
        ]);
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [HomePageController]: $message');
        // NOTE: 如果不是更新配置消息, 则不处理
        if (!message.isEventConfig) return;

        loadDataFromAPI(forceRefresh: true);
      },
    );
  }

  @override
  void onClose() {
    _websocketSubscription?.cancel();
    _websocketSubscription = null;

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
