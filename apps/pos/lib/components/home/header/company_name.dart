import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class CompanyName extends GetView<ConfigController> {
  const CompanyName({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Text(
        controller.companyName,
        style: const TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w700,
        ),
      );
    });
  }
}
