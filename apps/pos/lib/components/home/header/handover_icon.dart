import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HandoverIconButton extends StatelessWidget {
  HandoverIconButton({super.key});

  final CustomDrawerController _drawerController = Get.find<CustomDrawerController>();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Iconfont.arrowSwap,
        color: CustomTheme.secondaryColor,
        size: 24.0.scaleWidth,
      ),
      onPressed: () {
        _drawerController.openEndDrawer('handover');
      },
    );
  }
}
