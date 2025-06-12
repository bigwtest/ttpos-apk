import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/api/desk/desk_api.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_ui/components/tt_order_action/drawer/desk_select_uuid/desk_select_uuid_view.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class SelectDeskDrawer extends StatelessWidget {
  const SelectDeskDrawer({super.key, required this.onConfirm});
  final Future<bool> Function(List<int>, {Desk? desk})? onConfirm;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          // 抽屉内容
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            width: 526.0.scaleWidth,
            child: Material(
              elevation: 16,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: GetBuilder<DeskBindController>(
                builder: (controller) {
                  return Obx(
                    () => DeskSelectUuidView(
                      title:
                          '${'选择当前平板对应的桌位'.tr}${(controller.desk?.deskNo == null || controller.desk?.deskNo.isEmpty == true) ? '' : '（${controller.desk?.deskNo}）'}',
                      centerTitle: false,
                      multiple: false, // 单选
                      onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
                        status: -1,
                        isBuffet: -1,
                        meta: meta,
                      ),
                      onCancel: controller.back,
                      resetOnCancel: true,
                      cancelText: '退出'.tr,
                      onConfirm: onConfirm,
                      isAllowEmpty: true,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
