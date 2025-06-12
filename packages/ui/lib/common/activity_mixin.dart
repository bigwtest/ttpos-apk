// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

mixin DetectActivityMixin<T extends StatefulWidget> on State<T> {
  /// 检测活动定时器
  Timer? _inactivityTimer;

  /// 检测活动间隔时间
  Duration _inactivityDuration = const Duration(minutes: 5);

  /// 是否需要检测活动
  bool shouldDetectActivity = false;

  /// 活动超时回调
  void Function()? onInactivityTimeout;

  /// 开启检测活动
  void turnOnDetectActivity({Duration? duration}) {
    debugPrint('turnOnDetectActivity ${duration?.inSeconds}');
    shouldDetectActivity = true;
    if (duration != null) {
      _inactivityDuration = duration;
    }
    _resetInactivityTimer();
  }

  /// 关闭检测活动
  void turnOffDetectActivity() {
    debugPrint('turnOffDetectActivity');
    shouldDetectActivity = false;
    _inactivityTimer?.cancel();
  }

  /// 重置检测活动定时器
  void _resetInactivityTimer() {
    _inactivityTimer?.cancel();
    _inactivityTimer = null;

    if (!shouldDetectActivity) return;

    debugPrint('resetInactivityTimer ${_inactivityDuration.inSeconds}');

    _inactivityTimer = Timer(_inactivityDuration, () {
      if (mounted) {
        onInactivityTimeout?.call();
      }
    });
  }

  /// 处理交互
  void _handleInteraction() {
    _resetInactivityTimer();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    /// 关闭检测活动
    turnOffDetectActivity();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      /// 行为
      behavior: HitTestBehavior.translucent,

      /// 处理交互
      onPointerDown: (_) => _handleInteraction(),
      onPointerMove: (_) => _handleInteraction(),
      onPointerUp: (_) => _handleInteraction(),

      /// 构建活动组件
      child: buildWithActivity(context),
    );
  }

  Widget buildWithActivity(BuildContext context);
}
