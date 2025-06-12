// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/order/components/top_up_details/top_up_details.dart';
import 'package:pos/controllers/top_up_list/top_up_details_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class TopUpDetailsDrawer extends StatelessWidget {
  const TopUpDetailsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 800.0.scaleWidth,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: GetBuilder(
          init: TopUpDetailsController(),
          dispose: (_) => Get.delete<TopUpDetailsController>(),
          builder: (controller) {
            return TopUpDetails();
          },
        ),
      ),
    );
  }
}
