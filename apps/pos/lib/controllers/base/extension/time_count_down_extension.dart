import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

/// 计时器管理器
class TimerMonitor {
  static final TimerMonitor _instance = TimerMonitor._internal();
  factory TimerMonitor() => _instance;
  TimerMonitor._internal();

  final RxInt activeTimers = 0.obs;
  final Map<String, TimeCountController> _activeControllers = {};

  void _updateTimerCount(bool isIncrement) {
    if (isIncrement) {
      activeTimers.value++;
    } else if (activeTimers.value > 0) {
      activeTimers.value--;
    }
    if (kDebugMode) {
      print('当前活跃的定时器数量: ${activeTimers.value} ${isIncrement ? '↑' : '↓'}');
    }
  }

  void increment() => _updateTimerCount(true);
  void decrement() => _updateTimerCount(false);

  void registerController(String tag, TimeCountController controller) {
    destroyController(tag);
    _activeControllers[tag] = controller;
  }

  void unregisterController(String tag) {
    if (_activeControllers.containsKey(tag)) {
      _activeControllers.remove(tag);
    }
  }

  void destroyController(String tag) {
    if (_activeControllers.containsKey(tag)) {
      _activeControllers[tag]?.cleanupTimer();
      Get.delete<TimeCountController>(tag: tag);
      _activeControllers.remove(tag);
    }
  }
}

/// 计时器模式
enum TimerMode { countdown, countup }

/// 时间计时器控制器
class TimeCountController extends GetxController {
  final RxInt seconds;
  final TimerMode mode;
  final int initialSeconds;
  Timer? _timer;
  bool _isDisposed = false;

  TimeCountController(this.initialSeconds, this.mode) : seconds = initialSeconds.obs {
    _startTimer();
  }

  void _startTimer() {
    if (_isDisposed) return;
    cleanupTimer();
    
    _timer = Timer.periodic(const Duration(seconds: 1), _onTimerTick);
    if (_timer != null) TimerMonitor().increment();
  }

  void _onTimerTick(Timer timer) {
    if (_isDisposed) {
      cleanupTimer();
      return;
    }

    switch (mode) {
      case TimerMode.countdown:
        seconds.value--;
        if (seconds.value <= 0) {
          seconds.value = 0;
          cleanupTimer();
        }
        break;
      case TimerMode.countup:
        seconds.value++;
        break;
    }
  }

  void cleanupTimer() {
    if (_timer != null) {
      _timer?.cancel();
      _timer = null;
      TimerMonitor().decrement();
    }
  }

  @override
  void onClose() {
    _isDisposed = true;
    cleanupTimer();
    TimerMonitor().unregisterController('__timer__');
    super.onClose();
  }

  String get formattedTime {
    final value = seconds.value;
    final isNegative = value < 0;
    final absValue = value.abs();
    
    final hours = absValue ~/ 3600;
    final minutes = (absValue % 3600) ~/ 60;
    final secs = absValue % 60;
    
    final timeStr = hours > 0
        ? '${hours.toString().padLeft(2, '0')} : ${minutes.toString().padLeft(2, '0')} : ${secs.toString().padLeft(2, '0')}'
        : '${minutes.toString().padLeft(2, '0')} : ${secs.toString().padLeft(2, '0')}';
    
    return isNegative ? '-$timeStr' : timeStr;
  }
}

/// 时间格式化扩展
extension TimeCountDownExtension on int {
  static const String _timerTag = '__timer__';

  TimeCountController _createController(TimerMode mode) {
    final controller = TimeCountController(this, mode);
    Get.put(controller, tag: _timerTag, permanent: false);
    TimerMonitor().registerController(_timerTag, controller);
    return controller;
  }

  TimeCountController _getOrCreateController(TimerMode mode) {
    try {
      if (Get.isRegistered<TimeCountController>(tag: _timerTag)) {
        final controller = Get.find<TimeCountController>(tag: _timerTag);
        if (controller.initialSeconds != this || controller.mode != mode) {
          TimerMonitor().destroyController(_timerTag);
          return _createController(mode);
        }
        return controller;
      }
      return _createController(mode);
    } catch (e) {
      return _createController(mode);
    }
  }

  /// 获取倒计时控制器
  TimeCountController get controller => _getOrCreateController(TimerMode.countdown);

  /// 获取顺计时控制器
  TimeCountController get countUpController => _getOrCreateController(TimerMode.countup);


  /// 倒计时格式化的时间字符串 (HH : MM : SS)
  String get timeDown {
    try {
      return controller.formattedTime;
    } catch (error) {
      if (kDebugMode) {
        print('timeDown error: [$this]');
        print(error);
      }
      return '00 : 00';
    }
  }

  /// 顺计时格式化的时间字符串 (HH : MM : SS)
  String get timeUp {
    try {
      return countUpController.formattedTime;
    } catch (error) {
      if (kDebugMode) {
        print('timeUp error: [$this]');
        print(error);
      }
      return '00 : 00';
    }
  }
}

