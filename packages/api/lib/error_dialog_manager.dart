import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorDialogManager {
  static final ErrorDialogManager _instance = ErrorDialogManager._internal();
  factory ErrorDialogManager() => _instance;
  ErrorDialogManager._internal();

  bool _isShowingDialog = false;

  Future<void> showErrorDialog({
    required String titleKey,
    Map<String, String>? titleParams,
    required String messageKey,
    Map<String, String>? messageParams,
    bool barrierDismissible = false,
  }) async {
    if (_isShowingDialog) return;

    _isShowingDialog = true;
    try {
      await Get.dialog<void>(
        Dialog(
          child: ErrorDialog(
            titleKey: titleKey,
            titleParams: titleParams,
            messageKey: messageKey,
            messageParams: messageParams,
            onConfirm: () {
              Get.back();
            },
          ),
        ),
        barrierDismissible: barrierDismissible,
      );
    } finally {
      _isShowingDialog = false;
    }
  }

  Future<void> showSaasExpiredDialog({
    required int days,
  }) async {
    if (_isShowingDialog) return;

    _isShowingDialog = true;

    try {
      await Get.dialog<void>(
        Dialog(
          child: ErrorDialog(
            titleKey: '剩余 @days 天',
            titleParams: {'days': days.toString()},
            messageKey: '店铺状态准备到期，如需继续使用，请联系销售代表',
            onConfirm: () {
              Future.microtask(() {
                Get.back();
              });
            },
            isSaasExpired: true,
          ),
        ),
      );
    } finally {
      _isShowingDialog = false;
    }
  }

  static void showToast(
    String message, {
    Duration? duration,
    Color? contentColor,
  }) {
    duration ??= const Duration(seconds: 3);

    final cancelFunc = BotToast.showText(
      text: message,
      align: Alignment.center,
      contentColor: contentColor ?? const Color.fromRGBO(0, 0, 0, 0.8),
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      duration: duration,
      clickClose: false,
      crossPage: true,
      onlyOne: true,
    );

    // 三秒后关闭
    Future.delayed(duration, () {
      cancelFunc();
    });
  }
}

class ErrorDialog extends StatelessWidget {
  final String? titleKey;
  final Map<String, String>? titleParams;
  final String messageKey;
  final Map<String, String>? messageParams;
  final VoidCallback? onConfirm;
  final bool? isSaasExpired;
  final bool enableIcon;

  const ErrorDialog({
    super.key,
    this.titleKey,
    this.titleParams,
    required this.messageKey,
    this.messageParams,
    this.onConfirm,
    this.isSaasExpired = false,
    this.enableIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (enableIcon)
            SizedBox(
              width: 100.0,
              height: 100.0,
              child: Image.asset(
                isSaasExpired == true ? 'packages/ttpos_api/assets/notice.png' : 'packages/ttpos_api/assets/device.png',
                fit: BoxFit.cover,
              ),
            ),
          SizedBox(height: 16.0),
          Center(
            child: Text(
              titleKey != null && titleKey!.isNotEmpty ? titleKey!.trParams(titleParams ?? {}) : '鉴权失败'.tr,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (messageKey.isNotEmpty) ...[
            SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              child: Text(
                messageKey.trParams(messageParams ?? {}),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  height: 1.44,
                ),
              ),
            ),
          ],
          SizedBox(height: 12.0),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: TextButton(
                    onPressed: onConfirm,
                    style: TextButton.styleFrom(
                      // minimumSize: Size(0, 40.0),
                      backgroundColor: Color(0xFFFFBE00),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      side: BorderSide(color: Color(0xFFFFBE00), width: 1),
                    ),
                    child: Text(
                      '确定'.tr,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
