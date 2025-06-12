import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/api/desk/desk_api.dart';
import 'package:tablet/pages/desk/controller.dart';
import 'package:tablet/pages/home/main.dart';
import 'package:tablet/routers/name.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/desk/response/item/item.dart';

class DeskBindController extends GetxController {
  final TokenController _tokenController = Get.find<TokenController>();
  String? get token => _tokenController.token;

  bool isShowingTips = false;

  final RxBool _isFirstLoaded = false.obs;
  bool get isFirstLoaded => _isFirstLoaded.value;

  ///
  final Rx<Desk?> _desk = Rx<Desk?>(null);
  Desk? get desk => _desk.value;
  void setDesk(Desk? desk) {
    _desk.value = desk;
    _deskUpdateTimestamp = DateTime.now().millisecondsSinceEpoch;

    _checkIfShowTips();

    _isFirstLoaded.value = true;
  }

  final RxBool showCheckoutButton = false.obs;

  void _checkIfShowTips() {
    debugPrint('checkIfShowTips: ${Get.rootDelegate.currentConfiguration?.locationString}');
  }

  Future<void> back() async {
    Get.back();
  }

  Future<bool> onConfirm(List<int> uuids, {Desk? desk}) async {
    debugPrint('onConfirm: $uuids');
    if (uuids.isEmpty) {
      return false;
    }

    final result = await DeskAPI().bindDesk(
      uuids.first,
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );

    if (result == null) {
      setDesk(null);
      return false;
    }

    setDesk(result);

    Future.microtask(() {
      Get.offAllNamed(RouteNames.home);
    });

    return true;
  }

  Future<Desk?> loadDeskFromAPI({bool forceRefresh = false}) async {
    if (token == null || token?.isEmpty == true) {
      debugPrint('token 为空，跳过请求');
      return null;
    }
    final result = await DeskAPI().getDesk();
    if (_deskUpdateTimestamp > _timerExecuteTimestamp && !forceRefresh) return null;
    setDesk(result);

    _checkIfInDeskBindRoute();

    return result;
  }

  void _checkIfInDeskBindRoute() {
    if (_desk.value?.deskNo != null && Get.currentRoute == RouteNames.deskBind) {
      Future.microtask(() {
        Get.offAllNamed(RouteNames.home);
      });

      return;
    }

    // NOTE: 如果桌台状态为可用或者待清台,但路由在桌台详情里,则退回到开桌页
    if (_desk.value?.isAvailable == true || _desk.value?.isWait == true) {
      if (Get.rootDelegate.currentConfiguration?.locationString == HomeRoutes.desk.homeRoute) {
        Future.microtask(() {
          Get.rootDelegate.offNamed(HomeRoutes.open.homeRoute);
        });
      }

      return;
    }
  }

  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _deskUpdateTimestamp = 0;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;
  Worker? _refreshWorker;

  StreamSubscription? _websocketSubscription;

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(
      // NOTE: 接了 websocket 后, 30s 轮询一次
      const Duration(seconds: 30),
      (timer) {
        debugPrint('桌台详情定时刷新任务 ${timer.tick}');
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        loadDeskFromAPI();
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void onReady() {
    super.onReady();

    loadDeskFromAPI(forceRefresh: true);

    _startTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('appLifeCycleStartWorker 收到 startTimerSignal 信号 [DeskBindController]');
        _startTimer();
        // 关闭必选商品弹窗
        DeskController.closeMustDialog();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('appLifeCycleStopWorker 收到 stopTimerSignal 信号 [DeskBindController]');
        _stopTimer();
      },
    );

    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) async {
        debugPrint('refreshWorker 收到 refreshSignal 信号 [DeskBindController]');
        await Future.wait([
          loadDeskFromAPI(forceRefresh: true),
        ]);
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [DeskBindController]: $message');
        // NOTE: 如果不是更新桌台消息, 则不处理
        if (!message.isEventDesk) return;

        // NOTE: 如果不是绑定桌台消息, 则不处理
        if (message.data?['desk_uuid'] != _desk.value?.uuid) return;

        // NOTE: 如果更新时间大于桌台更新时间，则刷新桌台
        if (message.updateTime > (_desk.value?.updateTime ?? 0)) {
          loadDeskFromAPI(forceRefresh: true);
        }
      },
    );
  }

  @override
  void onClose() {
    _stopTimer();

    /// 销毁 websocket 订阅
    _websocketSubscription?.cancel();
    _websocketSubscription = null;

    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    _refreshWorker?.dispose();
    _refreshWorker = null;

    super.onClose();
  }
}
