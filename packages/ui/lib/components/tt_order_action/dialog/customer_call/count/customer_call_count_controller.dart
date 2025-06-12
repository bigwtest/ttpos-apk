import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call.dart';

class CustomerCallCountController extends GetxController {
  final bool isShowPrint; // 是否显示打印列表
  final Future<ResponseUnprocessedCall?> Function()? fetchUnprocessedCallCount;

  CustomerCallCountController({
    this.isShowPrint = false,
    this.fetchUnprocessedCallCount,
  });

  // 日志
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;
  //
  final Rx<ResponseUnprocessedCall> _countNum = ResponseUnprocessedCall(
    abnormalPrintCount: 0,
    unprocessedCallCount: 0,
  ).obs;
  ResponseUnprocessedCall get countNum => _countNum.value;
  set countNum(ResponseUnprocessedCall value) {
    _countNum.value = value;
    // 缓存
    _cachedCountNum = value;
    // 记录最后更新时间
    _unprocessedCallCountUpdateTimestamp = DateTime.now().millisecondsSinceEpoch;
  }

  // 总未处理数量
  int get totalUnprocessedCount => isShowPrint
      ? _countNum.value.unprocessedCallCount + _countNum.value.abnormalPrintCount
      : _countNum.value.unprocessedCallCount;

  // 缓存统计
  static ResponseUnprocessedCall _cachedCountNum = ResponseUnprocessedCall(
    abnormalPrintCount: 0,
    unprocessedCallCount: 0,
  );

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) {
    _isLoading.value = value;
  }

  //
  Timer? _timer;
  int _timerExecuteTimestamp = 0;
  int _unprocessedCallCountUpdateTimestamp = 0;
  //
  Worker? _workerRefresh;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  @override
  void onInit() {
    countNum = _cachedCountNum;
    // 加载
    loadUnprocessedCallCount(
      forceRefresh: true,
    );
    // 监听刷新按钮
    _workerRefresh = ever(
      RefreshService.to.signal,
      (_) => loadUnprocessedCallCount(
        forceRefresh: true,
      ),
    );

    _startTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        _logger.severe('appLifeCycleStartWorker 收到 startTimerSignal 信号');
        _startTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        _logger.severe('appLifeCycleStopWorker 收到 stopTimerSignal 信号');
        _stopTimer();
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [CustomerCallCountController]: $message');
        // NOTE: 如果不是更新呼叫数量消息, 则不处理
        if (!message.isEventCustomerCall) return;

        // NOTE: 如果更新时间大于呼叫数量更新时间，则刷新呼叫数量
        if (message.updateTime > (_countNum.value.updateTime ?? 0)) {
          loadUnprocessedCallCount(forceRefresh: true);
        }
      },
    );

    //
    super.onInit();
  }

  @override
  void onClose() {
    _websocketSubscription?.cancel();
    _websocketSubscription = null;
    //
    _workerRefresh?.dispose();
    _workerRefresh = null;
    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    //
    _stopTimer();
    //
    super.onClose();
  }

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(
      const Duration(seconds: 45),
      (timer) {
        // _logger.severe('消息通知统计定时刷新任务 ${timer.tick}');
        // 记录定时请求时间
        _timerExecuteTimestamp = DateTime.now().millisecondsSinceEpoch;
        loadUnprocessedCallCount(
          forceRefresh: false,
        );
      },
    );
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void loadUnprocessedCallCount({
    bool forceRefresh = false,
  }) async {
    if (_isLoading.value) return;
    try {
      _isLoading.value = true;
      final res = await fetchUnprocessedCallCount?.call();
      // 检查数据是否过期
      if (_unprocessedCallCountUpdateTimestamp > _timerExecuteTimestamp && !forceRefresh) return;

      // NOTE: 请求数据是空, 则不更新
      if (res == null) return;
      countNum = res;
    } catch (error, stackTrace) {
      _logger.severe('loadUnprocessedCallCount Error:', error, stackTrace);
    } finally {
      _isLoading.value = false;
    }
  }
}
