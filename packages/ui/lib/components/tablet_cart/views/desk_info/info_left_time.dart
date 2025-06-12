import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/theme/theme.dart';

enum InfoLeftTimeType {
  mealTime, // 用餐时间
  orderingTime, // 点餐时间
}

class InfoLeftTime extends StatefulWidget {
  final InfoLeftTimeType type; // 类型
  final int time; // 剩余时间(秒)
  final int reminderTime; // 提示时间(秒)
  final bool isReminderDialog; // 是否提示弹窗 (点餐助手不需要提示弹窗)
  final bool isTextSpan; // 是否使用 TextSpan 显示

  const InfoLeftTime({
    super.key,
    this.type = InfoLeftTimeType.mealTime,
    this.reminderTime = 0,
    this.isReminderDialog = true,
    this.time = -999,
    this.isTextSpan = false,
  });

  @override
  State<InfoLeftTime> createState() => _InfoLeftTimeState();
}

class _InfoLeftTimeState extends State<InfoLeftTime> {
  Timer? _timer;
  int _timerValue = -999;
  String get timerString {
    try {
      if (_timerValue == -999) return '';
      if (_timerValue == -1) return '不限时'.tr;
      if (_timerValue == 0) return '00:00';
      final hours = _timerValue ~/ 3600;
      final minutes = (_timerValue % 3600) ~/ 60;
      final seconds = _timerValue % 60;
      return '${hours > 0 ? '${hours.toString().padLeft(2, '0')}:' : ''}${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
    } catch (e) {
      return '00:00';
    }
  }

  bool _showDialogOne = false;
  bool _showDialogTwo = false;
  bool _showDialogThree = false;
  bool _showDialogFour = false;

  // 自助餐时间提示
  void showBuffetTimeDialog() async {
    // 判断是否需要提示弹窗
    if (!widget.isReminderDialog) return;
    // 自助餐，不限时
    if (widget.time == -1) return;
    // 提示时间
    switch (widget.type) {
      case InfoLeftTimeType.mealTime:
        // 用餐时间结束
        // 如有需要，请呼叫服务员
        if (_timerValue == 0 && !_showDialogOne) {
          _showDialogOne = true;
          await DialogManager.showConfirmDialog(
            showCancelButton: false,
            showIconNotification: true,
            title: '用餐时间结束'.tr,
            message: '如有需要，请呼叫服务员'.tr,
          );
          _showDialogOne = false;
          return;
        }

        // 用餐还有 5 分钟
        // 请尽快用餐，如有需要，请呼叫服务员
        if (_timerValue == widget.reminderTime && !_showDialogTwo) {
          _showDialogTwo = true;
          await DialogManager.showConfirmDialog(
            showCancelButton: false,
            showIconNotification: true,
            title: '用餐还有 @time 分钟'.trParams(
              {
                'time': (widget.reminderTime ~/ 60).toString(),
              },
            ),
            message: '请尽快用餐，如有需要，请呼叫服务员'.tr,
          );
          _showDialogTwo = false;
          return;
        }
        break;
      case InfoLeftTimeType.orderingTime:
        // 点餐时间结束
        // 如有需要，请呼叫服务员
        if (_timerValue == 0 && !_showDialogThree) {
          _showDialogThree = true;
          await DialogManager.showConfirmDialog(
            showCancelButton: false,
            showIconNotification: true,
            title: '点餐时间结束'.tr,
            message: '如有需要，请呼叫服务员'.tr,
          );
          _showDialogThree = false;
          return;
        }

        // 点餐还有 5 分钟
        // 请在剩余时间完成选购
        if (_timerValue == widget.reminderTime && !_showDialogFour) {
          _showDialogFour = true;
          await DialogManager.showConfirmDialog(
            showCancelButton: false,
            showIconNotification: true,
            title: '点餐还有 @time 分钟'.trParams(
              {
                'time': (widget.reminderTime ~/ 60).toString(),
              },
            ),
            message: '请在剩余时间完成选购'.tr,
          );
          _showDialogFour = false;
          return;
        }
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    //
    _timerValue = widget.time;
    //
    if (_timerValue > 0) {
      startTimer();
    } else if (_timerValue == 0 && widget.type == InfoLeftTimeType.mealTime) {
      Future.delayed(
        const Duration(milliseconds: 300),
        () {
          showBuffetTimeDialog();
        },
      );
    }
  }

  @override
  void didUpdateWidget(InfoLeftTime oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 监听到 widget.time 发生变化
    if (_timerValue != widget.time) {
      _timerValue = widget.time;
      // 开启轮询
      if (_timerValue > 0) {
        startTimer();
      }
    }
  }

  @override
  void dispose() {
    _stopTimer(); // 确保在小部件销毁时取消计时器
    _closeDialog();
    //
    super.dispose();
  }

  // 关闭弹窗
  void _closeDialog() {
    if (_showDialogOne) {
      Get.back();
    }
    if (_showDialogTwo) {
      Get.back();
    }
    if (_showDialogThree) {
      Get.back();
    }
    if (_showDialogFour) {
      Get.back();
    }
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void startTimer() {
    _stopTimer();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        // 提示时间
        if (_timerValue == widget.reminderTime || _timerValue == 0) {
          showBuffetTimeDialog();
        }
        // 时间倒计时
        if (_timerValue <= 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _timerValue--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: CustomTheme.errorColor,
      fontWeight: FontWeight.w600,
      fontSize: widget.isTextSpan ? null : 14.0,
    );

    if (widget.isTextSpan) {
      return RichText(
        text: TextSpan(
          text: timerString,
          style: style,
        ),
      );
    }

    return Text(
      timerString,
      style: style,
    );
  }
}
