import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:uuid/uuid.dart';

/// 通知项数据类
/// 用于存储单个通知的配置信息
class _NotificationItem {
  final Widget Function(VoidCallback onClose) content;
  final double wrapWidth;
  final Duration? duration;
  final VoidCallback? onClose;
  final String uuid;

  _NotificationItem({
    required this.content,
    this.wrapWidth = 380,
    this.duration,
    this.onClose,
    required this.uuid,
  });
}

/// 通知助手类
/// 提供全局通知显示、管理和控制功能
class NotificationHelper {
  // =============== 常量定义 ===============
  static const double _defaultNotificationHeight = 135;
  static const int _maxNotifications = 3;
  static const Duration _defaultDuration = Duration(seconds: 5);

  // =============== 状态管理 ===============
  /// 活动通知列表
  static final ValueNotifier<List<String>> _activeIndicesNotifier = ValueNotifier<List<String>>([]);

  /// 通知高度缓存
  static final Map<String, double> _notificationHeights = <String, double>{};

  /// 活动通知取消函数映射
  static final Map<String, CancelFunc> _activeNotifications = {};

  // =============== 队列管理 ===============
  /// 通知队列
  static final List<_NotificationItem> _notificationQueue = [];
  static bool _isProcessingQueue = false;

  // =============== 公共方法 ===============
  /// 显示通知
  static Future<String> showNotification({
    double wrapWidth = 320.0,
    required Widget Function(VoidCallback onClose) content,
    Duration? duration,
    VoidCallback? onClose,
  }) async {
    final uuid = Uuid().v4();

    _notificationQueue.add(
      _NotificationItem(
        content: content,
        wrapWidth: wrapWidth,
        duration: duration,
        onClose: onClose,
        uuid: uuid,
      ),
    );
    _processNotificationQueue();
    return Future.value(uuid);
  }

  /// 关闭指定通知
  static void closeNotification(String uuid) {
    if (_activeNotifications.containsKey(uuid)) {
      _activeNotifications.remove(uuid);
      _notificationHeights.remove(uuid);

      Future.microtask(() {
        _activeIndicesNotifier.value = _activeIndicesNotifier.value.where((id) => id != uuid).toList();
        _processNotificationQueue();
      });
    }
  }

  /// 关闭所有通知
  static void closeAllNotifications() {
    for (final uuid in _activeIndicesNotifier.value.toList()) {
      closeNotification(uuid);
    }
    _notificationQueue.clear();
    _notificationHeights.clear();
    _activeNotifications.clear();
  }

  /// 释放资源
  static void dispose() {
    closeAllNotifications();

    _activeIndicesNotifier.value.clear();
  }

  // =============== 私有方法 ===============
  /// 内部通知显示实现
  static Future<void> _showNotificationInternal({
    required Widget Function(VoidCallback onClose) content,
    required double wrapWidth,
    required Duration duration,
    VoidCallback? onClose,
    required String uuid,
  }) async {
    _notificationHeights[uuid] = _defaultNotificationHeight;
    _activeIndicesNotifier.value = [..._activeIndicesNotifier.value, uuid];

    // 设置自动关闭定时器
    Future.delayed(duration, () => closeNotification(uuid));

    BotToast.showCustomNotification(
      duration: null,
      align: Alignment.topRight,
      enableSlideOff: false,
      crossPage: true,
      onlyOne: false,
      backButtonBehavior: BackButtonBehavior.ignore,
      wrapToastAnimation: (controller, cancel, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Curves.easeOutCubic,
            ),
          ),
          child: child,
        );
      },
      toastBuilder: (cancel) {
        _activeNotifications[uuid] = cancel;

        return ValueListenableBuilder<List<String>>(
          valueListenable: _activeIndicesNotifier,
          builder: (context, activeIndices, child) {
            final position = activeIndices.indexOf(uuid);
            if (position == -1) return const SizedBox.shrink();

            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: wrapWidth.scaleWidth,
              margin: EdgeInsets.only(
                top: 58 + _calculateTopPosition(position),
                right: 16,
                bottom: 8,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    final renderBox = context.findRenderObject() as RenderBox?;
                    if (renderBox != null) {
                      final actualHeight = renderBox.size.height;
                      if (_notificationHeights[uuid] != actualHeight) {
                        _notificationHeights[uuid] = actualHeight;
                      }
                    }
                  });

                  return content(() => closeNotification(uuid));
                },
              ),
            );
          },
        );
      },
      onClose: () {
        if (_activeNotifications.containsKey(uuid)) {
          _activeNotifications.remove(uuid);

          Future.microtask(() {
            _activeIndicesNotifier.value = _activeIndicesNotifier.value.where((id) => id != uuid).toList();

            if (onClose != null) onClose();

            _processNotificationQueue();
          });
        }
      },
    );
  }

  /// 处理通知队列
  static Future<void> _processNotificationQueue() async {
    if (_isProcessingQueue || _notificationQueue.isEmpty) return;

    _isProcessingQueue = true;

    while (_notificationQueue.isNotEmpty && _activeIndicesNotifier.value.length < _maxNotifications) {
      final item = _notificationQueue.removeAt(0);

      await _showNotificationInternal(
        content: item.content,
        wrapWidth: item.wrapWidth,
        duration: item.duration ?? _defaultDuration,
        onClose: item.onClose,
        uuid: item.uuid,
      );
    }

    await Future.delayed(const Duration(milliseconds: 50));

    _isProcessingQueue = false;
  }

  /// 计算通知的顶部位置
  static double _calculateTopPosition(int position) {
    double topPosition = 0;

    for (int i = 0; i < position; i++) {
      final index = _activeIndicesNotifier.value[i];
      topPosition += (_notificationHeights[index] ?? _defaultNotificationHeight) + 8;
    }

    return topPosition;
  }
}
