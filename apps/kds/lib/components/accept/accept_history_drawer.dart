// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/components/accept/accept_history_view.dart';
import 'package:kds/controllers/accept/accept_history_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class AcceptHistoryDrawer extends StatelessWidget {
  const AcceptHistoryDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 728.0.scaleWidth,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: GetBuilder(
          init: AcceptHistoryController(),
          dispose: (_) => Get.delete<AcceptHistoryController>(),
          builder: (controller) {
            return AcceptHistoryView(controller: controller);
          },
        ),
      ),
    );
  }
}
