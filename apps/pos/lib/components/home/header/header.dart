// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/home/header/company_name.dart';
import 'package:pos/components/home/header/handover_icon.dart';
import 'package:pos/components/home/header/logout_icon.dart';
import 'package:pos/components/home/header/notification_icon.dart';
import 'package:pos/components/home/header/username.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_ui/components/refresh_icon.dart';
import 'package:ttpos_ui/components/tt_time_display/tt_time_display.dart';
import 'package:ttpos_ui/components/websocket_icon.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0.scaleHeight,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.0.scalePadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 1.0.scalePadding,
            children: [
              CompanyName(),
              SizedBox(width: 16.0.scalePadding),
              UserName(),
              SizedBox(width: 5.0.scalePadding),
              SizedBox(
                width: 40.0.scaleWidth,
                height: 40.0.scaleHeight,
                child: HandoverIconButton(),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 1.0.scalePadding,
            children: [
              GetBuilder<TokenController>(
                builder: (controller) {
                  return WebSocketIcon(
                    size: 40.0.scaleWidth,
                    getParams: () => WebSocketParams(
                      token: controller.token ?? '',
                      client: WebSocketClient.pos,
                    ),
                  );
                },
              ),
              RefreshIconButton(size: 40.0.scaleWidth),
              SizedBox(
                width: 40.0.scaleWidth,
                height: 40.0.scaleHeight,
                child: NotificationIconButton(),
              ),
              SizedBox(
                width: 40.0.scaleWidth,
                height: 40.0.scaleHeight,
                child: LogoutIconButton(),
              ),
              GetBuilder<LanguageController>(
                builder: (controller) {
                  String timeZone = 'Asia/Shanghai';
                  if (Get.isRegistered<ConfigController>()) {
                    timeZone = Get.find<ConfigController>().companyTimeZone;
                  }
                  return Obx(
                    () => TtTimeDisplay(
                      countryCode: controller.languageCodeAndCountryCode,
                      timeZone: timeZone,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
