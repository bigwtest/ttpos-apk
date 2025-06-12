import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/base/main_controller.dart';

class UserName extends GetView<BaseInfoController> {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Text(
        '${'收银员：'.tr}${controller.username}',
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
        ),
      );
    });
  }
}
