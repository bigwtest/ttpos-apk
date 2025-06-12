part of '../container.dart';

mixin MixinTimerWatcher on GetxController {
  final Set<int> _timerCount = <int>{};
  int get timerCountValue => _timerCount.length;

  void registerTimer(int deskUuid) {
    _timerCount.add(deskUuid);
    debugPrint('桌台定时器: $timerCountValue ⌛️');
  }

  void unregisterTimer(int deskUuid) {
    _timerCount.remove(deskUuid);
    debugPrint('桌台定时器: $timerCountValue ⌛️');
  }
}
