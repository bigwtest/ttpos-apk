import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/print/request/report.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';

class PrintQueueItem {
  /// 源数据
  final int printMethod;
  final int uuid;
  RespPrinterData? data;

  /// 本地标识
  final int createdAt;
  int? syncedAt;
  int? sentAt;
  int? completedAt;
  int? failedAt;
  String? failedReason;
  int retryCount = 0;

  PrintQueueItem({
    /// 源数据
    required this.printMethod,
    required this.uuid,
    this.data,

    /// 本地标识
    this.syncedAt,
    this.sentAt,
    this.completedAt,
    required this.createdAt,
    this.failedAt,
    this.failedReason,
    this.retryCount = 0,
  });

  factory PrintQueueItem.fromJson(Map<String, dynamic> json) => PrintQueueItem(
        printMethod: json['print_method'],
        uuid: json['uuid'],
        syncedAt: json['synced_at'],
        sentAt: json['sent_at'],
        completedAt: json['completed_at'],
        createdAt: json['created_at'],
        failedAt: json['failed_at'],
        failedReason: json['failed_reason'],
        data: json['data'] != null ? RespPrinterData.fromJson(json['data']) : null,
        retryCount: json['retry_count'],
      );

  Map<String, dynamic> toJson() => {
        'print_method': printMethod,
        'uuid': uuid,
        'synced_at': syncedAt,
        'sent_at': sentAt,
        'completed_at': completedAt,
        'created_at': createdAt,
        'failed_at': failedAt,
        'failed_reason': failedReason,
        'data': data?.toJson(),
        'retry_count': retryCount,
      };

  PrintQueueItem copyWith({
    int? syncedAt,
    int? sentAt,
    int? completedAt,
    int? failedAt,
    String? failedReason,
    RespPrinterData? data,
    int? retryCount,
  }) =>
      PrintQueueItem(
        printMethod: printMethod,
        uuid: uuid,
        syncedAt: syncedAt ?? this.syncedAt,
        sentAt: sentAt ?? this.sentAt,
        completedAt: completedAt ?? this.completedAt,
        createdAt: createdAt,
        failedAt: failedAt ?? this.failedAt,
        failedReason: failedReason ?? this.failedReason,
        data: data ?? this.data,
        retryCount: retryCount ?? this.retryCount,
      );

  // 更新完成状态，且删除数据，释放空间
  PrintQueueItem complete() => PrintQueueItem(
        printMethod: printMethod,
        uuid: uuid,
        createdAt: createdAt,
        completedAt: DateTime.now().millisecondsSinceEpoch,
        data: null,
        failedAt: failedAt,
        failedReason: failedReason,
        syncedAt: syncedAt,
        sentAt: sentAt,
        retryCount: retryCount,
      );

  // 更新失败状态，当重试次数小于3次时，重试次数+1，当重试次数达到 3 次时，删除数据，释放空间
  PrintQueueItem fail({String? failedReason}) {
    final retryCount = this.retryCount + 1;
    final data = retryCount < 3 ? this.data : null;

    return PrintQueueItem(
      printMethod: printMethod,
      uuid: uuid,
      createdAt: createdAt,
      completedAt: null,
      failedAt: DateTime.now().millisecondsSinceEpoch,
      failedReason: failedReason,
      syncedAt: syncedAt,
      sentAt: sentAt,
      retryCount: retryCount,
      data: data,
    );
  }

  // 更新发送状态
  PrintQueueItem send() => copyWith(
        sentAt: DateTime.now().millisecondsSinceEpoch,
      );

  // 更新同步状态
  PrintQueueItem sync() => PrintQueueItem(
        printMethod: printMethod,
        uuid: uuid,
        createdAt: createdAt,
        syncedAt: DateTime.now().millisecondsSinceEpoch,
        completedAt: completedAt,
        failedAt: failedAt,
        failedReason: failedReason,
        // NOTE: 确保数据为空，避免数据占用
        data: null,
        retryCount: retryCount,
      );

  // 是否可以发送到打印机, 当发送状态为空且数据不为空且重试次数小于3次时，可以发送到打印机
  bool get readyToSend => sentAt == null && data != null && retryCount < 3 && completedAt == null;

  // 是否可以同步, 当完成状态或失败状态且重试次数大于等于3次时，可以同步
  bool get readyToSync => syncedAt == null && (completedAt != null || (failedAt != null && retryCount >= 3));

  // 是否可以删除，当同步状态不为空时，可以删除
  bool get readyToDelete => syncedAt != null;

  // 是否成功
  bool get isCompleted => completedAt != null;

  // 是否失败
  bool get isFailed => failedAt != null;
}

class PrintQueueController extends GetxController {
  PrintQueueController({required this.getData, required this.reportData});

  ///***************************************************************************
  /// 常量定义
  ///***************************************************************************
  static const printQueueLimit = 100; // 打印队列最大长度
  static const processedItemsLimit = 100; // 已处理项目最大数量
  static const readyToSyncItemsLimit = 20; // 当同步数据达到20条时，启动同步数据定时器

  ///***************************************************************************
  /// 依赖注入
  ///***************************************************************************
  final Future<BaseList<RespPrinterData>?> Function() getData;
  final Future<bool> Function(List<ReqReportPrinterData> data) reportData;

  ///***************************************************************************
  /// 状态管理
  ///***************************************************************************
  final RxBool _isSaving = false.obs; // 保存状态
  final RxBool _isSending = false.obs; // 发送状态
  final RxBool _isSyncing = false.obs; // 同步状态
  final RxBool _isDeleting = false.obs; // 删除状态

  ///***************************************************************************
  /// 数据存储
  ///***************************************************************************
  /// 本地打印队列
  final ListQueue<PrintQueueItem> _printQueue = ListQueue();
  List<PrintQueueItem> get printQueue => _printQueue.toList();
  int get queueLength => _printQueue.length;

  /// 已处理项目缓存
  final Map<int, PrintQueueItem> _processedItems = <int, PrintQueueItem>{};
  int get processedItemsLength => _processedItems.length;

  List<PrintQueueItem> get readyToSendItems => _processedItems.values.where((item) => item.readyToSend).toList();
  List<PrintQueueItem> get readyToSyncItems => _processedItems.values.where((item) => item.readyToSync).toList();
  List<PrintQueueItem> get readyToDeleteItems => _processedItems.values.where((item) => item.readyToDelete).toList();

  ///***************************************************************************
  /// 定时器管理
  ///***************************************************************************
  Timer? _getDataTimer; // 获取数据定时器
  Timer? _sendDataTimer; // 发送数据定时器
  Timer? _syncDataTimer; // 同步数据定时器
  Timer? _deleteDataTimer; // 删除数据定时器

  /// 应用生命周期监听器
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;
  Worker? _refreshWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  ///***************************************************************************
  /// 队列管理方法
  ///***************************************************************************

  /// 更新打印队列
  void _upsertQueue(List<PrintQueueItem> data, {bool save = true}) async {
    _printQueue.addAll(data);

    debugPrint('[PrintQueueController] 更新打印队列 共计${_printQueue.length}条数据');

    // 如果打印队列长度超过限制，则停止获取数据定时器
    if (_printQueue.length >= printQueueLimit) {
      _stopGetDataTimer();
    }

    // 如果需要保存数据，则保存数据到本地
    if (save) {
      await _saveDataToStorage();
    }

    // 如果打印队列不为空，则启动发送数据定时器
    if (_sendDataTimer == null && _printQueue.isNotEmpty) {
      _startSendDataTimer();
    }
  }

  /// 添加已处理项目 给外部使用
  void addAllProcessedItems(List<RespPrinterData> data) {
    if (data.isEmpty) return;

    for (final item in data) {
      // NOTE: 如果已处理项目中存在该数据，则跳过
      if (_processedItems.containsKey(item.uuid)) {
        continue;
      }

      // 添加已处理项目
      _processedItems[item.uuid] = PrintQueueItem(
        printMethod: item.printMethod,
        uuid: item.uuid,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        data: null,
        completedAt: DateTime.now().millisecondsSinceEpoch,
      );
    }

    if (readyToSyncItems.length >= readyToSyncItemsLimit) {
      _startSyncDataTimer();
    }
  }

  /// 添加已处理项目 给外部使用
  void addProcessedItem(RespPrinterData data, {bool failed = false, String? failedReason}) {
    // NOTE: 如果已处理项目中存在该数据，则跳过
    if (_processedItems.containsKey(data.uuid)) {
      return;
    }

    // 添加已处理项目
    _processedItems[data.uuid] = PrintQueueItem(
      printMethod: data.printMethod,
      uuid: data.uuid,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      data: null,
      completedAt: failed ? null : DateTime.now().millisecondsSinceEpoch,
      failedAt: failed ? DateTime.now().millisecondsSinceEpoch : null,
      failedReason: failedReason,
      retryCount: failed ? 3 : 0,
    );

    _syncDataToServer();
  }

  void reportPrinterRecord(RespPrinterData data, {required bool failed, String? failedReason}) async {}

  ///***************************************************************************
  /// 定时器控制方法
  ///***************************************************************************

  /// 数据获取定时器
  void _startGetDataTimer() {
    _stopGetDataTimer();

    _getDataTimer = Timer.periodic(
      const Duration(seconds: 15),
      (timer) {
        debugPrint('[PrintQueueController] 定时器 获取数据 第${timer.tick}次 共计$processedItemsLength条数据');
        _loadDataFromAPI();
      },
    );
  }

  /// 停止数据获取定时器
  void _stopGetDataTimer() {
    _getDataTimer?.cancel();
    _getDataTimer = null;
  }

  /// 同步数据定时器
  void _startSyncDataTimer() {
    _stopSyncDataTimer();

    _syncDataTimer = Timer.periodic(
      const Duration(seconds: 20),
      (timer) {
        debugPrint('[PrintQueueController] 定时器 同步数据到服务器 第${timer.tick}次 共计${readyToSyncItems.length}条数据');
        _syncDataToServer();
      },
    );
  }

  /// 停止同步数据定时器
  void _stopSyncDataTimer() {
    _syncDataTimer?.cancel();
    _syncDataTimer = null;
  }

  /// 删除数据定时器
  void _startDeleteDataTimer() {
    _stopDeleteDataTimer();

    _deleteDataTimer = Timer.periodic(
      const Duration(seconds: 30),
      (timer) {
        debugPrint('[PrintQueueController] 定时器 从内存删除数据 第${timer.tick}次 共计${readyToDeleteItems.length}条数据');
        _deleteDataFromMemory();
      },
    );
  }

  /// 停止删除数据定时器
  void _stopDeleteDataTimer() {
    _deleteDataTimer?.cancel();
    _deleteDataTimer = null;
  }

  /// 启动发送数据定时器
  void _startSendDataTimer() {
    if (_sendDataTimer != null) return;

    _sendDataTimer = Timer.periodic(
      const Duration(milliseconds: 200),
      (timer) {
        debugPrint('[PrintQueueController] 定时器 发送打印数据到打印机 第${timer.tick}次 共计${readyToSendItems.length}条数据');
        _sendDataToPrinter();
      },
    );
  }

  /// 停止发送数据定时器
  void _stopSendDataTimer() {
    _sendDataTimer?.cancel();
    _sendDataTimer = null;
  }

  ///***************************************************************************
  /// 数据持久化方法
  ///***************************************************************************

  /// 从API加载数据
  Future<void> _loadDataFromAPI() async {
    try {
      if (!Get.isRegistered<TokenController>()) {
        throw Exception('TokenController 未注册');
      }

      final tokenController = Get.find<TokenController>();
      final token = tokenController.token;
      if (token == null || token.isEmpty) {
        throw Exception('Token 未注册');
      }

      final data = await getData();
      if (data == null) return;
      if (data.list.isNotEmpty) {
        _upsertQueue(
          data.list
              .map(
                (item) => PrintQueueItem(
                  printMethod: item.printMethod,
                  uuid: item.uuid,
                  createdAt: DateTime.now().millisecondsSinceEpoch,
                  data: item,
                  retryCount: 0,
                ),
              )
              .toList(),
          save: true,
        );

        _startSendDataTimer();
      }
    } catch (error, stackTrace) {
      debugPrint('[PrintQueueController] 从API加载数据失败, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  /// 保存数据到本地
  Future<void> _saveDataToStorage({bool force = false}) async {
    if (_isSaving.value && !force) return;
    _isSaving.value = true;
    try {
      if (!Get.isRegistered<SharedPreferencesWithCache>()) {
        throw Exception('SharedPreferencesWithCache 未注册');
      }

      final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
      await storage.setStringList(
        StorageKey.printQueue.asString,
        _printQueue.map((item) => jsonEncode(item.toJson())).toList(),
      );
    } catch (error, stackTrace) {
      debugPrint('[PrintQueueController] 保存数据到本地失败, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _isSaving.value = false;
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
      _upsertQueue(data.map((e) => PrintQueueItem.fromJson(jsonDecode(e))).toList(), save: false);
    } catch (error, stackTrace) {
      debugPrint('[PrintQueueController] 从本地加载数据失败, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  /// 清空打印队列
  void clearAll() {
    _printQueue.clear();
    _processedItems.clear();

    _saveDataToStorage(force: true);
  }

  ///***************************************************************************
  /// 打印任务处理方法
  ///***************************************************************************

  /// 发送数据到打印机
  Future<void> _sendDataToPrinter() async {
    if (_isSending.value) return;

    if (_printQueue.isEmpty) {
      _stopSendDataTimer();
      return;
    }

    // 如果处理的数据超过限制，则停止发送数据定时器
    if (_processedItems.length >= processedItemsLimit) {
      _stopSendDataTimer();
      return;
    }

    PrintQueueItem item = _printQueue.removeFirst();

    try {
      _isSending.value = true;

      if (!item.readyToSend) {
        debugPrint('[PrintQueueController] 数据不符合发送条件 ${item.uuid}');
        return;
      }

      // 更新发送状态
      final updatedItem = item.send();

      debugPrint('[PrintQueueController] 发送数据到打印机 ${item.uuid}');

      final content = item.data;
      if (content == null) {
        final finalItem = updatedItem.fail(failedReason: '数据不存在');
        _processedItems[item.uuid] = finalItem;
        return;
      }

      final result = await PrintController.sendPrint(content, isReport: false);

      // FIXME: 延迟200ms，避免正在打印机正在打印又收到新的数据而导致乱码，不优雅未来优化
      await Future.delayed(const Duration(milliseconds: 200));

      if (result) {
        // 更新完成状态
        final finalItem = updatedItem.complete();
        _processedItems[item.uuid] = finalItem;
      } else {
        // 更新失败状态
        final finalItem = updatedItem.fail(failedReason: '发送失败');
        _processedItems[item.uuid] = finalItem;
      }
    } catch (error, stackTrace) {
      debugPrint('[PrintQueueController] 发送数据失败 ${item.uuid}, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _isSending.value = false;
      await _saveDataToStorage(force: true);

      if (_printQueue.isEmpty) {
        _stopSendDataTimer();
      }
    }
  }

  /// 同步数据到服务器
  Future<void> _syncDataToServer() async {
    if (_isSyncing.value) return;
    try {
      if (readyToSyncItems.isEmpty) return;

      _isSyncing.value = true;

      final data = readyToSyncItems
          .map(
            (item) => ReqReportPrinterData(
              uuid: item.uuid,
              status: item.isCompleted ? 1 : 0,
              reason: item.failedReason,
            ),
          )
          .toList();
      final result = await reportData(data);

      if (!result) return;

      for (final item in data) {
        final newItem = _processedItems[item.uuid]?.sync();
        if (newItem == null) continue;
        _processedItems[item.uuid] = newItem;
      }
    } catch (error, stackTrace) {
      debugPrint('[PrintQueueController] 同步数据到服务器失败, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _isSyncing.value = false;
      _deleteDataFromMemory();
    }
  }

  /// 从内存删除数据
  void _deleteDataFromMemory() {
    if (_isDeleting.value) return;
    try {
      if (readyToDeleteItems.isEmpty) return;

      _isDeleting.value = true;

      for (final item in readyToDeleteItems) {
        _processedItems.remove(item.uuid);
        debugPrint('[PrintQueueController] 从内存删除数据成功 ${item.uuid}');
      }
    } catch (error, stackTrace) {
      debugPrint('[PrintQueueController] 从内存删除数据失败, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      _isDeleting.value = false;

      // NOTE: 如果数据获取定时器为空且待处理项目数量小于处理项目限制，则启动数据获取定时器
      if (processedItemsLength <= processedItemsLimit && _getDataTimer == null) {
        _startGetDataTimer();
      }
    }
  }

  ///***************************************************************************
  /// 应用生命周期监听器
  ///***************************************************************************

  @override
  void onInit() {
    super.onInit();

    _loadDataFromStorage();

    _startGetDataTimer();
    _startSyncDataTimer();
    _startSendDataTimer();
    _startDeleteDataTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('[PrintQueueController] 收到 startTimerSignal 信号');
        _startGetDataTimer();
        _startSyncDataTimer();
        _startSendDataTimer();
        _startDeleteDataTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('[PrintQueueController] 收到 stopTimerSignal 信号');
        _stopGetDataTimer();
        _stopSyncDataTimer();
        _stopSendDataTimer();
        _stopDeleteDataTimer();
      },
    );

    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) async {
        debugPrint('[PrintQueueController] 收到 refreshSignal 信号');
        await Future.wait([_loadDataFromAPI()]);
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen((message) {
      debugPrint('WebSocketService 收到消息 [PrintQueueController]: $message');

      /// NOTE: 如果是打印数据更新消息，则更新打印队列
      if (!message.isEventPrintData) return;

      _loadDataFromAPI();
    });
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    _stopGetDataTimer();
    _stopSyncDataTimer();
    _stopSendDataTimer();
    _stopDeleteDataTimer();

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

  ///***************************************************************************
  /// 静态工具方法
  ///***************************************************************************

  /// 更新已处理项目的静态方法 给外部使用
  static bool upsertProcessedItems(List<RespPrinterData> data) {
    if (!Get.isRegistered<PrintQueueController>()) {
      return false;
    }

    final controller = Get.find<PrintQueueController>();
    controller.addAllProcessedItems(data);

    return true;
  }

  /// 更新已处理项目的静态方法 给外部使用
  static Future<bool> upsertProcessedItem(RespPrinterData data, {bool failed = false, String? failedReason}) async {
    if (!Get.isRegistered<PrintQueueController>()) {
      return false;
    }

    final controller = Get.find<PrintQueueController>();
    try {
      final reportData = [
        ReqReportPrinterData(
          uuid: data.uuid,
          status: failed ? 0 : 1,
          reason: failedReason,
        ),
      ];
      await controller.reportData(reportData);
      debugPrint('[PrintQueueController] 直接上报打印记录成功 ${data.uuid}');
    } catch (error, stackTrace) {
      DialogManager.showToast('上报打印记录失败'.tr);
      debugPrint('[PrintQueueController] 直接上报打印记录失败 ${data.uuid}, error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
    return true;
  }

  /// 清空打印队列
  static void clear() {
    String message = '是否清空打印队列'.tr;
    if (Get.isRegistered<PrintQueueController>()) {
      final controller = Get.find<PrintQueueController>();
      message = '是否清空打印队列, 当前队列有 @currentCount 条数据, 已处理 @processedCount 条数据'.trParams({
        "currentCount": controller.queueLength.toString(),
        "processedCount": controller.processedItemsLength.toString(),
      });

      DialogManager.showConfirmDialog(
        message: message,
        onConfirm: () async {
          controller.clearAll();
          return true;
        },
      );
    } else {
      DialogManager.showConfirmDialog(
        message: '打印队列未初始化, 是否清空本地缓存数据'.tr,
        onConfirm: () async {
          if (Get.isRegistered<SharedPreferencesWithCache>()) {
            final storage = Get.find<SharedPreferencesWithCache>();
            await storage.remove(StorageKey.printQueue.asString);
            return true;
          }

          return false;
        },
      );
    }
  }
}
