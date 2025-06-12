// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';
import 'package:ttpos_model/buffet/response/list/list.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/desks/views/open/buffet/content.dart';
import 'package:ttpos_ui/components/desks/views/open/header.dart';
import 'package:ttpos_ui/components/desks/views/open/not_buffet/content.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenDialog extends StatefulWidget {
  // 标题
  final String title;
  // 桌台编号
  final String deskNo;
  // 桌台UUID
  final int? deskUuid;
  // 是否显示备注
  final bool isShowRemark;
  // 是否显示自助餐或非自助餐头部
  final bool isShowIsBuffetOrNotHeader;
  // 选中的自助餐UUID列表
  final List<int> selectedBuffetUuids;
  // (自助餐)顾客类型数量
  final Map<int, int> customerTypeCounts;
  // (非自助餐)总人数
  final int totalCustomerCount;
  // 是否自助餐
  final bool isBuffetOrNot;
  // 是否自助餐列表可选择
  final bool isBuffetListSelectable;
  // 自助餐列表
  final List<Buffet>? buffetList;
  // 请求自助餐列表
  final Future<BuffetList?> Function()? requestBuffetList;
  // 确认开桌
  final Future<bool> Function(DeskOpenModel openModel) onConfirm;
  // 是否开启默认人数
  final bool isOpenDefaultPeopleNum;
  // 默认人数
  final int defaultPeopleNum;

  const DeskOpenDialog({
    super.key,
    this.title = '',
    this.deskNo = '',
    this.deskUuid,
    required this.onConfirm,
    this.isShowRemark = true,
    this.isShowIsBuffetOrNotHeader = true,
    this.selectedBuffetUuids = const [],
    this.customerTypeCounts = const {},
    this.totalCustomerCount = 0,
    this.isBuffetOrNot = false,
    this.isBuffetListSelectable = true,
    this.requestBuffetList,
    this.buffetList,
    this.isOpenDefaultPeopleNum = false,
    this.defaultPeopleNum = 0,
  });

  @override
  State<DeskOpenDialog> createState() => _DeskOpenDialogState();
}

class _DeskOpenDialogState extends State<DeskOpenDialog> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      id: widget.deskNo,
      tag: widget.deskNo,
      init: DeskOpenController(
        props: DeskOpenDialogProps(
          deskUuid: widget.deskUuid,
          isBuffetOrNot: widget.isBuffetOrNot,
          selectedBuffetUuids: widget.selectedBuffetUuids,
          customerTypeCounts: widget.customerTypeCounts,
          totalCustomerCount: widget.totalCustomerCount,
          isShowRemark: widget.isShowRemark,
          buffetList: widget.buffetList,
          requestBuffetList: widget.requestBuffetList,
          isOpenDefaultPeopleNum: widget.isOpenDefaultPeopleNum,
          defaultPeopleNum: widget.defaultPeopleNum,
          onConfirmOpen: widget.onConfirm,
        ),
      ),
      dispose: (controller) {
        if (Get.isRegistered<DeskOpenController>(tag: widget.deskNo)) {
          Get.delete<DeskOpenController>(tag: widget.deskNo, force: true);
        }
      },
      builder: (DeskOpenController controller) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            controller.customerCountFocusNode.unfocus();
            controller.remarkFocusNode.unfocus();
            controller.isRemarkFocused = false;
          },
          child: Obx(() {
            return Container(
              width: controller.isBuffetOrNot ? 900.0 : 550.0,
              // height: controller.isBuffetOrNot.value ? 600.0 : 500.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16.0,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 20.0,
                        right: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            widget.title.isNotEmpty
                                ? widget.title
                                : '[@name]就餐人数'.trParams({
                                    'name': widget.deskNo,
                                  }),
                            style: const TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          if (widget.isShowIsBuffetOrNotHeader)
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: DeskOpenDialogHeader(
                                isBuffetOrNot: controller.isBuffetOrNot,
                                toggleBuffetOrNot: controller.toggleBuffetOrNot,
                              ),
                            ),
                        ],
                      ),
                    ),
                    controller.isBuffetOrNot
                        ? DeskOpenDialogContentBuffet(
                            tag: widget.deskNo,
                            onConfirm: widget.onConfirm,
                            isShowRemark: widget.isShowRemark,
                            isBuffetListSelectable: widget.isBuffetListSelectable,
                          )
                        : DeskOpenDialogContentNotBuffet(
                            tag: widget.deskNo,
                            onConfirm: widget.onConfirm,
                            isShowRemark: widget.isShowRemark,
                          ),
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
