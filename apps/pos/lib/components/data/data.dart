// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/data/data_view.dart';
import 'package:pos/controllers/data/data_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DataAnalysisDrawer extends StatelessWidget {
  const DataAnalysisDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 616.0.scaleWidth,
      child: GetBuilder(
        init: DataController(),
        dispose: (_) => Get.delete<DataController>(),
        builder: (controller) {
          return DataAnalysisView();
        },
      ),
    );
  }
}
