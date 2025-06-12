import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu/controllers/common/drawer_controller.dart';
import 'package:ttpos_ui/components/mobile_header/mobile_header_view.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class HeaderView extends StatelessWidget {
  HeaderView({super.key});

  final CustomDrawerController drawerController = Get.find<CustomDrawerController>();
  final ConfigController configController = Get.find<ConfigController>();
  @override
  Widget build(BuildContext context) {
    return MobileHeaderView(
      logoSrc: configController.cloud.brandLogoLong ?? '',
      onTapLanguage: () {
        drawerController.openEndDrawer(DrawerType.language);
      },
    );
  }
}
