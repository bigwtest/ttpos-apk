import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:tablet/api/call/call_api.dart';
import 'package:tablet/components/home/header/header_button.dart';
import 'package:tablet/controllers/base/main_controller.dart';
import 'package:tablet/controllers/notification/notification_controller.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/language/views/switch.dart';
import 'package:ttpos_ui/components/refresh_icon.dart';
import 'package:ttpos_ui/components/websocket_icon.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HeaderSetting extends StatefulWidget {
  const HeaderSetting({super.key});

  @override
  State<HeaderSetting> createState() => _HeaderSettingState();
}

class _HeaderSettingState extends State<HeaderSetting> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GetBuilder<TokenController>(
          builder: (controller) {
            return WebSocketIcon(
              size: 40.0.scaleWidth,
              getParams: () => WebSocketParams(
                token: controller.token ?? '',
                client: WebSocketClient.tablet,
              ),
              color: Colors.white,
            );
          },
        ),
        SizedBox(width: 16.0),
        RefreshIconButton(size: 40.0.scaleWidth, color: Colors.white),
        SizedBox(width: 16.0),
        SizedBox(
          child: LanguageSwitchView(
            child: GetBuilder<LanguageController>(
              builder: (controller) {
                return Obx(() {
                  return HeaderButton(
                    text: controller.getLanguageTitle,
                    icon: Icon(
                      Iconfont.global,
                      color: Colors.white,
                      size: 20.0.scaleWidth,
                    ),
                  );
                });
              },
            ),
          ),
        ),
        GetBuilder<DeskBindController>(
          builder: (controller) {
            return Obx(() {
              if (!controller.showCheckoutButton.value) {
                return SizedBox.shrink();
              }

              return Container(
                margin: EdgeInsets.only(left: 16.0),
                child: HeaderButton(
                  text: '结账'.tr,
                  primary: false,
                  icon: Icon(
                    Iconfont.wallet,
                    color: Colors.white,
                    size: 20.0.scaleWidth,
                  ),
                  onTap: () async {
                    if (Get.isRegistered<DeskBindController>()) {
                      final deskBindController = Get.find<DeskBindController>();
                      final deskUuid = deskBindController.desk?.uuid;
                      if (deskUuid != null) {
                        await NotificationController.onCallService(deskUuid, callType: CallType.checkout);
                      }
                    }
                  },
                ),
              );
            });
          },
        ),
        GetBuilder<BaseInfoController>(
          builder: (controller) {
            return Obx(() {
              if (!controller.isCallService) {
                return SizedBox.shrink();
              }

              return Container(
                margin: EdgeInsets.only(left: 16.0),
                child: HeaderButton(
                  text: '呼叫服务员'.tr,
                  primary: true,
                  icon: Icon(
                    Iconfont.notice,
                    color: CustomTheme.secondaryColor,
                    size: 20.0.scaleWidth,
                  ),
                  onTap: () async {
                    if (Get.isRegistered<DeskBindController>()) {
                      final deskBindController = Get.find<DeskBindController>();
                      final deskUuid = deskBindController.desk?.uuid;
                      if (deskUuid != null) {
                        await NotificationController.onCallService(deskUuid);
                      }
                    }
                  },
                ),
              );
            });
          },
        ),
      ],
    );
  }
}
