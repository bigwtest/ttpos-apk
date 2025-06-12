import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_model/customer_call/response/resp_unprocessed_list.dart';
import 'package:ttpos_model/order/response/check.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/notification.dart';
import 'package:ttpos_ui/components/common/dialog/notification_content.dart';

class NotificationControllerCallbacks {
  /// 获取未处理消息
  Future<ResponseUnprocessedList?> Function()? getUnprocessedNotice;

  /// 处理呼叫
  Future<bool> Function(int uuid)? handleUnprocessedCall;

  // 删除异常打印
  Future<bool> Function(int uuid)? removeAbnormalPrint;

  // 重新打印
  Future<RespPrinterData?> Function(int uuid)? reprintAbnormalPrint;

  // 接单
  Future<(bool, OrderCheck?, ErrorCode?, String?)> Function(int h5OrderUuid)? acceptOrder;

  // 拒单
  Future<bool> Function(int h5OrderUuid)? rejectOrder;

  // TTS
  Future<void> Function(String callText)? ttsCall;

  NotificationControllerCallbacks({
    /// 获取未处理消息
    this.getUnprocessedNotice,

    /// 处理呼叫
    this.handleUnprocessedCall,

    /// 删除异常打印
    this.removeAbnormalPrint,

    /// 重新异常打印
    this.reprintAbnormalPrint,

    /// 接单
    this.acceptOrder,

    /// 拒单
    this.rejectOrder,

    /// TTS
    this.ttsCall,
  });
}

class NotificationController extends GetxController {
  final NotificationControllerCallbacks callbacks;

  /// 是否是KDS
  final bool isKds;

  NotificationController({
    required this.callbacks,
    this.isKds = false,
  });

  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();

  bool _isLoading = false;

  Future<void> _getUnprocessedNoticeList() async {
    if (_isLoading == true) return;
    _isLoading = true;

    try {
      // 获取未处理通知
      final result = await callbacks.getUnprocessedNotice?.call();

      // 获取未处理通知
      final unprocessedNoticeList = _storage.getStringList(StorageKey.unprocessedNoticeList.asString) ?? [];

      // 收银机异常打印
      if ((result?.abnormalPrint.list.isNotEmpty ?? false) && !isKds) {
        //检查是否存在unprocessedNoticeList
        for (final e in result?.abnormalPrint.list ?? []) {
          if (!unprocessedNoticeList.contains(e.uuid.toString())) {
            await Future.delayed(Duration(milliseconds: 100));
            NotificationHelper.showNotification(
              content: (onClose) => NotificationContent(
                title: e.deskNo,
                message: e.reason,
                onClose: onClose,
                isShowCancel: false,
                isShowClose: false,
                isActionInNewLine: false,
                contentType: NotificationContentType.callService,
                confirmText: '重新打印'.tr,
                cancelText: '删除'.tr,
                onConfirm: () async {
                  await callbacks.reprintAbnormalPrint?.call(e.uuid);
                  onClose.call();
                },
                onCancel: () async {
                  await callbacks.removeAbnormalPrint?.call(e.uuid);
                  onClose.call();
                },
              ),
            );
          }
        }
      }

      // 收银机未处理呼叫
      if ((result?.callList.list.isNotEmpty ?? false) && !isKds) {
        //检查是否存在unprocessedNoticeList
        for (final e in result?.callList.list ?? []) {
          if (!unprocessedNoticeList.contains(e.uuid.toString())) {
            await Future.delayed(Duration(milliseconds: 100));
            callbacks.ttsCall?.call(e.callText);
            NotificationHelper.showNotification(
              content: (onClose) => NotificationContent(
                title: e.deskNo,
                message: e.callText,
                onClose: onClose,
                isShowCancel: false,
                isShowClose: false,
                isActionInNewLine: false,
                contentType: NotificationContentType.callService,
                onConfirm: () async {
                  await callbacks.handleUnprocessedCall?.call(e.uuid);
                  onClose.call();
                },
              ),
              duration: Duration(seconds: 5),
            );
          }
        }
      }

      //厨显未处理呼叫
      bool isCallReminder = false;
      if (Get.isRegistered<SharedPreferencesWithCache>()) {
        isCallReminder =
            Get.find<SharedPreferencesWithCache>().getBool(StorageKey.kdsLocalCallReminder.asString) ?? true;
      }
      if ((result?.callList.list.isNotEmpty ?? false) && isKds && isCallReminder) {
        //检查是否存在unprocessedNoticeList
        for (final e in result?.callList.list ?? []) {
          if (!unprocessedNoticeList.contains(e.uuid.toString())) {
            await Future.delayed(Duration(milliseconds: 100));
            callbacks.ttsCall?.call(e.callText);
            NotificationHelper.showNotification(
              content: (onClose) => NotificationContent(
                title: e.deskNo,
                message: e.callText,
                onClose: onClose,
                isShowCancel: false,
                isShowClose: false,
                isActionInNewLine: false,
                contentType: NotificationContentType.callService,
                onConfirm: () async {
                  await callbacks.handleUnprocessedCall?.call(e.uuid);
                  onClose.call();
                },
              ),
              duration: Duration(seconds: 5),
            );
          }
        }
      }

      // 收银机未处理接单
      if ((result?.h5Order.list.isNotEmpty ?? false) && !isKds) {
        //检查是否存在unprocessedNoticeList
        for (final e in result?.h5Order.list ?? []) {
          if (!unprocessedNoticeList.contains(e.uuid.toString())) {
            await Future.delayed(Duration(milliseconds: 100));
            if (Get.isRegistered<SharedPreferencesWithCache>()) {
              final isSpeech =
                  Get.find<SharedPreferencesWithCache>().getString(StorageKey.acceptOrderVoiceNotification.asString) ==
                      '1';
              if (isSpeech) {
                callbacks.ttsCall?.call(e.isAutoAccept ? '您有新的扫码订单，已为您自动接单'.tr : '您有新的扫码订单，请及时处理'.tr);
              }
            }
            NotificationHelper.showNotification(
              content: (onClose) => NotificationContent(
                title: e.deskNo,
                message: e.isAutoAccept ? '您有新的扫码订单，已为您自动接单'.tr : '您有新的扫码订单，请及时处理'.tr,
                onClose: onClose,
                isShowCancel: e.isAutoAccept ? false : true,
                isShowConfirm: e.isAutoAccept ? false : true,
                isActionInNewLine: true,
                contentType: NotificationContentType.acceptOrder,
                onCancel: () async {
                  await callbacks.rejectOrder?.call(e.uuid);
                  onClose.call();
                },
                onConfirm: () async {
                  await callbacks.acceptOrder?.call(e.uuid);
                  onClose.call();
                },
              ),
              duration: Duration(seconds: 5),
            );
          }
        }
      }

      // 保存未处理通知
      var list = <String>[];
      list.addAll(result?.callList.list.map((e) => e.uuid.toString()).toList() ?? []);
      list.addAll(result?.h5Order.list.map((e) => e.uuid.toString()).toList() ?? []);
      list.addAll(result?.abnormalPrint.list.map((e) => e.uuid.toString()).toList() ?? []);
      await _storage.setStringList(StorageKey.unprocessedNoticeList.asString, list);
    } catch (e) {
      debugPrint('[NotificationController] 获取未处理通知失败: $e');
    } finally {
      _isLoading = false;
    }
  }

  void _startGetUnprocessedNoticeTimer() {
    _stopGetUnprocessedNoticeTimer();

    _getUnprocessedNoticeTimer = Timer.periodic(
      const Duration(seconds: 45),
      (timer) {
        _getUnprocessedNoticeList();
      },
    );
  }

  void _stopGetUnprocessedNoticeTimer() {
    _getUnprocessedNoticeTimer?.cancel();
    _getUnprocessedNoticeTimer = null;
  }

  Timer? _getUnprocessedNoticeTimer; // 获取未处理消息数据定时器

  /// 应用生命周期监听器
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;
  Worker? _refreshWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  @override
  void onInit() {
    super.onInit();

    _startGetUnprocessedNoticeTimer();

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('[NotificationController] 收到 startTimerSignal 信号');
        _startGetUnprocessedNoticeTimer();
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('[NotificationController] 收到 stopTimerSignal 信号');
        _stopGetUnprocessedNoticeTimer();
      },
    );

    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) async {
        debugPrint('[NotificationController] 收到 refreshSignal 信号');
        await _getUnprocessedNoticeList();
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [NotificationController]: $message');
        // NOTE: 如果不是更新未处理消息消息, 则不处理
        if (!message.isEventCustomerCall) return;

        _getUnprocessedNoticeList();
      },
    );
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    _websocketSubscription?.cancel();
    _websocketSubscription = null;

    _stopGetUnprocessedNoticeTimer();

    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;
    _refreshWorker?.dispose();
    _refreshWorker = null;

    super.onClose();
  }
}
