import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/controllers/base/main_controller.dart';
import 'package:mobile/controllers/common/drawer_controller.dart';
import 'package:mobile/controllers/notification/notification_controller.dart';
import 'package:mobile/pages/home/controller.dart';
import 'package:ttpos_ui/components/mobile_header/mobile_header_view.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class HeaderView extends StatelessWidget {
  HeaderView({super.key});

  final NotificationController notificationController = Get.put(NotificationController());
  final CustomDrawerController drawerController = Get.find<CustomDrawerController>();
  final ConfigController configController = Get.find<ConfigController>();

  @override
  Widget build(BuildContext context) {
    final isDesk = Get.rootDelegate.currentConfiguration?.locationString.contains('/home/desk') ?? false;

    return MobileHeaderView(
      logoSrc: isDesk ? configController.companyLogo : configController.cloud.brandLogoLong ?? '',
      onTapLanguage: () {
        drawerController.openEndDrawer(DrawerType.language);
      },
      btnCall: GetBuilder<BaseInfoController>(
        builder: (controller) {
          return Obx(() {
            if (!controller.isCallService) {
              return const SizedBox.shrink();
            }

            return TtButton(
              isLoading: false,
              text: '呼叫服务员'.tr,
              fontWeight: FontWeight.bold,
              onTap: () async {
                if (Get.isRegistered<HomePageController>()) {
                  final deskBindController = Get.find<HomePageController>();
                  final deskUuid = deskBindController.desk?.uuid;
                  if (deskUuid != null) {
                    await NotificationController.onCallService(deskUuid);
                  }
                }
              },
            );
          });
        },
      ),
    );
  }
}
