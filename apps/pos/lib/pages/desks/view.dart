import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/pages/desks/controller.dart';
import 'package:ttpos_ui/components/desks/models/callbacks.dart';
import 'package:ttpos_ui/components/desks/views/container/container.dart';
import 'package:uuid/uuid.dart';

class DesksView extends StatefulWidget {
  const DesksView({super.key});

  @override
  State<DesksView> createState() => _DesksViewState();
}

class _DesksViewState extends State<DesksView> {
  // 控制器实例
  late final DesksMainController controller;
  final String tag = const Uuid().v4();

  final BaseInfoController baseInfoController = Get.find<BaseInfoController>();

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<DesksMainController>(tag: tag);
    } catch (e) {
      controller = Get.put(DesksMainController(), tag: tag);
    }
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<DesksMainController>(tag: tag)) {
      Get.delete<DesksMainController>(tag: tag);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DeskContainerView(
      tag: tag,
      callbacks: DeskCallbacks(
        onOpenDesk: controller.onOpenDesk,
        onCheckPassword: controller.onCheckPassword,
        onCloseDesk: controller.onCloseDesk,
        onCleanDesk: controller.onCleanDesk,
        onClickBuffetDesk: controller.onClickBuffetDesk,
        onClickNotBuffetDesk: controller.onClickNotBuffetDesk,
        onClickLockDesk: controller.onClickLockDesk,
        onClickClose: controller.onClickClose,
        getDeskData: controller.getDeskData,
        getDeskList: controller.getDeskList,
        getDeskCategory: controller.getDeskCategoryList,
        getBuffetList: controller.getBuffetList,
        isClearable: baseInfoController.hasDeskClear,
      ),
    );
  }
}
