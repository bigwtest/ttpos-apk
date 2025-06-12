import 'package:get/get.dart';

class RefreshService extends GetxService {
  static RefreshService get to => Get.find();

  final RxBool signal = false.obs;
  final RxBool isRunning = false.obs;
  void fire() async {
    if (isRunning.value) return;
    isRunning.value = true;
    signal.toggle();
    await Future.delayed(const Duration(seconds: 3));
    isRunning.value = false;
  }

  final RxBool startTimerSignal = false.obs;
  void startTimer() => startTimerSignal.toggle();

  final RxBool stopTimerSignal = false.obs;
  void stopTimer() => stopTimerSignal.toggle();
}
