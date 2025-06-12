import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/api/desk/desk_api.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_ui/components/tt_order_action/drawer/desk_select_uuid/desk_select_uuid_view.dart';

class BindDeskView extends StatefulWidget {
  const BindDeskView({super.key});

  @override
  State<BindDeskView> createState() => _BindDeskViewState();
}

class _BindDeskViewState extends State<BindDeskView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskBindController>(
      builder: (controller) {
        return Obx(
          () => DeskSelectUuidView(
            title:
                '${'选择当前平板对应的桌位'.tr}${(controller.desk?.deskNo == null || controller.desk?.deskNo.isEmpty == true) ? '' : '（${controller.desk?.deskNo}）'}',
            centerTitle: true,
            multiple: false, // 单选
            onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
              status: -1,
              isBuffet: -1,
              meta: meta,
            ),
            onCancel: controller.back,
            resetOnCancel: true,
            cancelText: '重置'.tr,
            onConfirm: controller.onConfirm,
            isAllowEmpty: true,
          ),
        );
      },
    );
  }
}
