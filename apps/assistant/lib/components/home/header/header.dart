import 'package:assistant/components/home/header/add_member_view.dart';
import 'package:assistant/components/home/header/customer_call_icon.dart';
import 'package:assistant/components/home/header/info.dart';
import 'package:assistant/components/home/header/select_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_ui/components/refresh_icon.dart';
import 'package:ttpos_ui/components/tt_time_display/tt_time_display.dart';
import 'package:ttpos_ui/components/websocket_icon.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Header extends StatelessWidget {
  Header({super.key});

  final LanguageController languageController = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 64.0.scaleHeight,
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.scaleWidth,
        ),
        width: double.infinity,
        color: CustomTheme.secondaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderInfo(),
            Row(
              spacing: 8.0,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderAddMember(),
                GetBuilder<TokenController>(
                  builder: (controller) {
                    return WebSocketIcon(
                      size: 40.0.scaleWidth,
                      getParams: () => WebSocketParams(
                        token: controller.token ?? '',
                        client: WebSocketClient.assistant,
                      ),
                      color: Colors.white,
                    );
                  },
                ),
                RefreshIconButton(size: 40.0.scaleWidth, color: Colors.white),
                CustomerCallIcon(),
                HeaderSelectLanguage(),
                Obx(
                  () {
                    String timeZone = 'Asia/Shanghai';
                    if (Get.isRegistered<ConfigController>()) {
                      timeZone = Get.find<ConfigController>().companyTimeZone;
                    }
                    return TtTimeDisplay(
                      fontColor: Colors.white,
                      countryCode: languageController.languageCodeAndCountryCode,
                      timeZone: timeZone,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
