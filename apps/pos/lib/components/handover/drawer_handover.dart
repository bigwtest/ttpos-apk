// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/handover/handover_view.dart';
import 'package:pos/controllers/handover/handover_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DrawerHandover extends StatelessWidget {
  const DrawerHandover({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 552.0.scaleWidth,
      child: GetBuilder(
        init: HandoverController(),
        dispose: (_) => Get.delete<HandoverController>(),
        builder: (controller) => HandoverView(),
      ),
    );
  }
}
