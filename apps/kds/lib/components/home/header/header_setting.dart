import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:kds/components/home/header/customer_call_view.dart';
import 'package:kds/components/home/header/select_language.dart';
import 'package:kds/controllers/common/call_reminder_controller.dart';
// Project imports:
import 'package:kds/controllers/header/dialog_controller.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/refresh_icon.dart';
import 'package:ttpos_ui/components/websocket_icon.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class HeaderSetting extends StatelessWidget {
  HeaderSetting({super.key});
  final DialogController dialogController = Get.find<DialogController>();
  final CallReminderController callReminderController = Get.find<CallReminderController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        GetBuilder<TokenController>(
          builder: (controller) {
            return WebSocketIcon(
              size: 40.0.scaleWidth,
              getParams: () => WebSocketParams(
                token: controller.token ?? '',
                client: WebSocketClient.kds,
              ),
              color: Colors.white,
            );
          },
        ),
        RefreshIconButton(size: 40.0.scaleWidth, color: Colors.white),
        Obx(() => callReminderController.callReminder ? CustomerCallIcon() : SizedBox()),
        HeaderSelectLanguage(),
        SizedBox(
          width: 40.0.scaleWidth,
          height: 40.0.scaleHeight,
          child: IconButton(
            onPressed: () {
              dialogController.settingDialog();
            },
            icon: Icon(
              Iconfont.setting,
              color: Colors.white,
            ),
            iconSize: 24.0.scaleWidth,
          ),
        ),
      ],
    );
  }
}
