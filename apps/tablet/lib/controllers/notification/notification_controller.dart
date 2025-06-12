import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/api/call/call_api.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class NotificationController {
  static bool isCalling = false;

  static Future<void> onCallService(int deskUuid, {CallType? callType}) async {
    if (deskUuid == 0) {
      NotificationController.showNotification(message: 'onCallService 参数错误'.tr, isError: true);
      return;
    }

    if (isCalling) {
      NotificationController.showNotification(message: '呼叫中，请稍后再试'.tr, isError: true);
      return;
    }
    isCalling = true;

    final (success, message) = await CallAPI().call(
      callType: callType ?? CallType.waiter,
      deskUuid: deskUuid,
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );

    if (success) {
      await NotificationController.showNotification(
        message: message,
        onClose: () => isCalling = false,
      );
    } else {
      await NotificationController.showNotification(
        message: message,
        onClose: () => isCalling = false,
        isError: true,
      );
    }
  }

  static Future<void> showNotification({
    required String message,
    VoidCallback? onClose,
    bool isError = false,
  }) async {
    BotToast.showCustomNotification(
      duration: Duration(seconds: 3),
      align: Alignment.topCenter,
      enableSlideOff: false,
      crossPage: true,
      onlyOne: false,
      onClose: onClose,
      toastBuilder: (cancel) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 10.0,
          ),
          margin: EdgeInsets.only(top: 20.0),
          width: 400.0.scaleWidth,
          decoration: BoxDecoration(
            color: isError ? CustomTheme.errorColor.shade50 : CustomTheme.primaryColor.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Iconfont.notice,
                color: isError ? CustomTheme.errorColor : CustomTheme.primaryColor,
                size: 16.0.scaleWidth,
              ),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    color: isError ? CustomTheme.errorColor : CustomTheme.primaryColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
