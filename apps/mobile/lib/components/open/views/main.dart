import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/components/open/open_tips_dialog.dart';
import 'package:mobile/components/open/views/buffet/content.dart';
import 'package:mobile/components/open/views/not_buffet/content.dart';
import 'package:ttpos_model/buffet/response/item/item.dart';
import 'package:ttpos_model/buffet/response/list/list.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenView extends StatefulWidget {
  const DeskOpenView({
    super.key,
    this.title = '',
    this.deskNo = '',
    this.deskUuid,
    required this.onConfirm,
    this.onCancel,
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
  // 取消开桌
  final VoidCallback? onCancel;
  // 是否开启默认人数
  final bool isOpenDefaultPeopleNum;
  // 默认人数
  final int defaultPeopleNum;

  @override
  State<DeskOpenView> createState() => _DeskOpenViewState();
}

class _DeskOpenViewState extends State<DeskOpenView> {
  final isLoading = false.obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
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
      builder: (controller) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 24.0,
              bottom: 32.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 16.0,
              children: [
                Text(
                  widget.title.isNotEmpty
                      ? widget.title
                      : '[@name]就餐人数'.trParams({
                          'name': widget.deskNo,
                        }),
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: CustomTheme.secondaryColor,
                  ),
                ),
                if (widget.isShowIsBuffetOrNotHeader)
                  Obx(() {
                    return Row(
                      spacing: 16.0,
                      children: [
                        Expanded(
                          child: TtButton(
                            text: '自助餐'.tr,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            onTap: controller.toggleBuffetOrNot,
                            buttonType: controller.isBuffetOrNot ? ActionButtonType.primary : ActionButtonType.outline,
                          ),
                        ),
                        Expanded(
                          child: TtButton(
                            text: '非自助餐'.tr,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            onTap: controller.toggleBuffetOrNot,
                            buttonType: controller.isBuffetOrNot ? ActionButtonType.outline : ActionButtonType.primary,
                          ),
                        ),
                      ],
                    );
                  }),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height - 320.0,
                  ),
                  child: SingleChildScrollView(
                    child: Obx(() {
                      return controller.isBuffetOrNot
                          ? DeskOpenContentBuffet(tag: widget.deskNo)
                          : DeskOpenContentNotBuffet(tag: widget.deskNo);
                    }),
                  ),
                ),
                Row(
                  spacing: 16.0,
                  children: [
                    Expanded(
                      child: TtButton(
                        text: '取消'.tr,
                        fontWeight: FontWeight.bold,
                        onTap: widget.onCancel,
                        buttonType: ActionButtonType.outline,
                        sizeType: SizeButtonType.large,
                      ),
                    ),
                    Expanded(
                      child: TtButton(
                        text: '确定'.tr,
                        fontWeight: FontWeight.bold,
                        onTap: () async {
                          try {
                            final DeskOpenModel? openModel = await controller.generateOpenModel();
                            if (openModel == null) return;
                            isLoading.value = true;
                            if (controller.isBuffetOrNot) {
                              final result = await showOpenTipsDialog();
                              if (result == true) {
                                await widget.onConfirm(openModel);
                                Get.back(result: true);
                              }
                            } else {
                              await widget.onConfirm(openModel);
                              Get.back(result: true);
                            }
                          } catch (error, stackTrace) {
                            debugPrint('onConfirmTap Error: $error\n$stackTrace');
                          } finally {
                            isLoading.value = false;
                          }
                        },
                        buttonType: ActionButtonType.primary,
                        isDisabled: isLoading.value,
                        isLoading: isLoading.value,
                        sizeType: SizeButtonType.large,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
