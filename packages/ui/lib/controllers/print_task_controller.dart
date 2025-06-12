import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/print/request/report.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';
import 'package:ttpos_ui/controllers/print_queue/print_job_model.dart';
import 'package:ttpos_ui/controllers/print_queue/print_queue_manager.dart';
import 'package:ttpos_ui/controllers/print_queue/print_stream.dart';

class PrintTaskController extends GetxController {
  final Future<BaseList<RespPrinterData>?> Function() getData; // 获取打印数据
  final Future<bool> Function(List<ReqReportPrinterData> data) reportData; // 上报打印数据信息

  PrintTaskController({
    required this.getData,
    required this.reportData,
  });

  // 待上报打印数据
  final List<ReqReportPrinterData> _reportDataList = [];
  bool _isSyncing = false;

  // 打印数据列表
  final RxList<RespPrinterData> _printDataList = <RespPrinterData>[].obs;
  bool _isLoading = false;

  // 记录发送数据到队列uuid
  final List<int> _printQueueUuidList = [];

  // 保存数据状态
  bool _isSaving = false;

  Timer? _getDataTimer; // 获取数据定时器
  Timer? _syncDataTimer; // 同步数据定时器

  /// 应用生命周期监听器
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;
  Worker? _refreshWorker;
  Worker? _printWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  // 打印队列
  final PrintQueueManager _printQueueManager = PrintQueueManager();

  @override
  void onInit() async {
    super.onInit();

    // 监听数据变化
    _printWorker = debounce(
      _printDataList,
      (_) {
        // 缓存数据到本地
        _saveDataToStorage();

        if (_printDataList.isEmpty) return;

        // 发送数据到打印队列
        for (var item in _printDataList) {
          // 如果已经在打印队列中，则跳过
          if (_printQueueUuidList.contains(item.uuid)) continue;
          // 添加到已发送列表
          _printQueueUuidList.add(item.uuid);
          // 添加到打印队列
          _printQueueManager.addTask(
            item.printerConfig, // 根据打印配置分组
            PrintJobModel(
              uuid: item.uuid,
              delayMillis: item.printingTime, // 延迟毫秒
              printTask: () => PrintController.sendPrint(item, isReport: false),
            ),
          );
        }
      },
      time: const Duration(milliseconds: 300),
    );

    //
    await _loadDataFromStorage();
    _startGetDataTimer();
    _startSyncDataTimer();

    // 监听队列事件
    _printQueueManager.allEvents.listen((event) {
      switch (event.type) {
        case PrintQueueEventType.enqueued:
          debugPrint('[PrintTaskController] 任务 ${event.job.uuid} 已加入队列');
          break;
        case PrintQueueEventType.started:
          debugPrint('[PrintTaskController] 开始打印 ${event.job.uuid}');
          break;
        case PrintQueueEventType.completed:
          debugPrint('[PrintTaskController] 打印完成 ${event.job.uuid}');
          // 上报打印成功数据
          _onPrintSuccess(event.job);
          break;
        case PrintQueueEventType.failed:
          debugPrint('[PrintTaskController] 打印失败 ${event.job.uuid}: ${event.error}');
          break;
        case PrintQueueEventType.retryScheduled:
          debugPrint('[PrintTaskController] 任务 ${event.job.uuid} 将在第 ${event.job.retryCount} 次重试');
          break;
        case PrintQueueEventType.abandoned:
          debugPrint('[PrintTaskController] 任务 ${event.job.uuid} 已放弃，超过最大重试次数');
          // 上报打印失败数据
          _onPrintFailed(event.job);
          break;
      }
    });

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('[PrintTaskController] 收到 startTimerSignal 信号');
        _startGetDataTimer();
        _startSyncDataTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('[PrintTaskController] 收到 stopTimerSignal 信号');
        _stopGetDataTimer();
        _stopSyncDataTimer();
      },
    );

    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) async {
        debugPrint('[PrintTaskController] 收到 refreshSignal 信号');
        await Future.wait([_fetchPrintData()]);
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen((message) {
      debugPrint('WebSocketService 收到消息 [PrintTaskController]: $message');

      /// NOTE: 如果是打印数据更新消息，则更新打印队列
      if (!message.isEventPrintData) return;

      _fetchPrintData();
    });
  }

  @override
  void onClose() {
    _stopGetDataTimer();
    _stopSyncDataTimer();
    // 关闭打印队列
    _printQueueManager.clearAllQueues();

    _printWorker?.dispose();
    _printWorker = null;

    _websocketSubscription?.cancel();
    _websocketSubscription = null;

    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    _refreshWorker?.dispose();
    _refreshWorker = null;
    //
    super.onClose();
  }

  // 打印队列成功回调
  void _onPrintSuccess(PrintJobModel job) {
    // 删除打印数据
    _printDataList.removeWhere((element) => element.uuid == job.uuid);
    _printQueueUuidList.removeWhere((element) => element == job.uuid);
    // 记录上报数据
    _reportDataList.add(
      ReqReportPrinterData(
        uuid: job.uuid,
        reason: '发送成功'.tr,
        status: 1,
      ),
    );
  }

  // 打印队列失败回调
  void _onPrintFailed(PrintJobModel job) {
    // 删除打印数据
    _printDataList.removeWhere((element) => element.uuid == job.uuid);
    _printQueueUuidList.removeWhere((element) => element == job.uuid);
    // 记录上报数据
    _reportDataList.add(
      ReqReportPrinterData(
        uuid: job.uuid,
        reason: '发送失败'.tr,
        status: 0,
      ),
    );
  }

  /// 同步数据定时器
  void _startSyncDataTimer() {
    _stopSyncDataTimer();

    _syncDataTimer = Timer.periodic(
      const Duration(seconds: 20),
      (timer) {
        debugPrint('[PrintTaskController] 定时器 同步数据到服务器 第${timer.tick}次 共计${_reportDataList.length}条数据');
        _syncDataToServer();
      },
    );
  }

  /// 停止同步数据定时器
  void _stopSyncDataTimer() {
    _syncDataTimer?.cancel();
    _syncDataTimer = null;
  }

  // 同步数据到服务器
  Future<void> _syncDataToServer() async {
    if (_isSyncing) return;
    if (_reportDataList.isEmpty) return;
    // 避免重复上报
    _isSyncing = true;
    try {
      final data = _reportDataList.toList();
      final res = await reportData.call(data);
      if (!res) return;
      // 清空上报数据
      for (var item in data) {
        _reportDataList.removeWhere((element) => element.uuid == item.uuid);
      }
    } catch (error, stackTrace) {
      // 处理上报失败的情况
      debugPrint('[PrintTaskController] 上报打印数据失败: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _isSyncing = false;
    }
  }

  /// 数据获取定时器
  void _startGetDataTimer() {
    _stopGetDataTimer();

    _getDataTimer = Timer.periodic(
      const Duration(seconds: 15),
      (timer) {
        debugPrint('[PrintTaskController] 定时器 获取数据 第${timer.tick}次 共计${_printDataList.length}条数据');
        _fetchPrintData();
      },
    );
  }

  /// 停止数据获取定时器
  void _stopGetDataTimer() {
    _getDataTimer?.cancel();
    _getDataTimer = null;
  }

  // 获取打印数据列表
  Future<void> _fetchPrintData() async {
    if (!Get.isRegistered<TokenController>()) {
      throw Exception('TokenController 未注册');
    }

    final tokenController = Get.find<TokenController>();
    final token = tokenController.token;
    if (token == null || token.isEmpty) {
      throw Exception('Token 未注册');
    }
    if (_isLoading) return;
    _isLoading = true;
    try {
      final data = await getData.call();
      if (data == null) return;
      // 添加数据
      for (var item in data.list) {
        // 判断uuid是否已经存在
        if (_printDataList.any((element) => element.uuid == item.uuid)) {
          final index = _printDataList.indexWhere((element) => element.uuid == item.uuid);
          _printDataList[index] = item;
        } else {
          _printDataList.add(item);
        }
      }
    } catch (error, stackTrace) {
      debugPrint('[PrintTaskController] 获取打印数据失败: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _isLoading = false;
    }
  }

  /// 从本地加载数据
  Future<void> _loadDataFromStorage() async {
    try {
      if (!Get.isRegistered<SharedPreferencesWithCache>()) {
        throw Exception('SharedPreferencesWithCache 未注册');
      }
      final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
      final data = storage.getStringList(StorageKey.printQueue.asString);
      if (data == null) return;
      _printDataList.addAll(data.map((e) => RespPrinterData.fromJson(jsonDecode(e))).toList());
    } catch (error, stackTrace) {
      debugPrint('[PrintTaskController] 从本地加载数据失败, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  /// 保存数据到本地
  Future<void> _saveDataToStorage() async {
    if (_isSaving) return;
    _isSaving = true;
    try {
      if (!Get.isRegistered<SharedPreferencesWithCache>()) {
        throw Exception('SharedPreferencesWithCache 未注册');
      }

      final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
      await storage.setStringList(
        StorageKey.printQueue.asString,
        _printDataList.map((item) => jsonEncode(item.toJson())).toList(),
      );
    } catch (error, stackTrace) {
      debugPrint('[PrintTaskController] 保存数据到本地失败, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _isSaving = false;
    }
  }
}
