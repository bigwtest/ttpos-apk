import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/pages/lock_screen/view.dart';

class LockScreenDialog {
  /// 是否正在打开锁屏对话框
  static bool _isOpen = false;

  /// 打开锁屏对话框
  static Future<void> open({
    required String appName,
    required Future<bool> Function(String password) onVerify,
    Future<void> Function()? onSuccess,
  }) async {
    /// 如果正在打开锁屏对话框，则不重复打开
    if (_isOpen) return;

    try {
      /// 设置正在打开锁屏对话框
      _isOpen = true;

      /// 打开锁屏对话框
      await Get.dialog(
        PopScope(
          canPop: false,
          child: LockScreenView(
            appName: appName,
            onSubmit: (password) async {
              final result = await onVerify.call(password);
              if (result) {
                Future.microtask(() {
                  Get.back();
                  onSuccess?.call();
                });
              }
              return result;
            },
          ),
        ),
        barrierDismissible: false,
      );
    } catch (error, stackTrace) {
      debugPrint('LockScreenDialog open error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      /// 设置正在打开锁屏对话框为 false
      _isOpen = false;
    }
  }
}
