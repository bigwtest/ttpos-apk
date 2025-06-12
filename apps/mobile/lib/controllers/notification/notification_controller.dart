import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/api/call/call_api.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/common/iconfont.dart';
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
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.fromLTRB(12, 76, 12, 0),
          width: Get.width - 24,
          decoration: BoxDecoration(
            color: isError ? CustomTheme.errorColor.shade50 : CustomTheme.primaryColor.shade50,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                offset: Offset(0, 4),
                blurRadius: 8,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Iconfont.notice,
                color: isError ? CustomTheme.errorColor : CustomTheme.primaryColor,
                size: 20.0,
              ),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    color: isError ? CustomTheme.errorColor : CustomTheme.primaryColor,
                    fontSize: 16.0,
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
