// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/desks/views/open/buffet/action/board.dart';
// Project imports:
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenDialogContentBuffetAction extends StatefulWidget {
  final String tag;
  final Future<bool> Function(DeskOpenModel openModel) onConfirm;
  final bool isShowRemark;

  const DeskOpenDialogContentBuffetAction({
    super.key,
    required this.tag,
    required this.onConfirm,
    this.isShowRemark = true,
  });

  @override
  State<DeskOpenDialogContentBuffetAction> createState() => _DeskOpenDialogContentBuffetActionState();
}

class _DeskOpenDialogContentBuffetActionState extends State<DeskOpenDialogContentBuffetAction> {
  final isLoading = false.obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
      id: widget.tag,
      tag: widget.tag,
      builder: (controller) {
        return Obx(() {
          return GestureDetector(
            // 点击空白区域取消顾客类型选中状态
            onTap: () {
              if (controller.selectedCustomerTypeUuid != null) {
                controller.onChangeSelectedCustomerTypeUuid(null);
              }
            },
            child: Container(
              constraints: const BoxConstraints(
                minHeight: 40.0,
                maxHeight: 480.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Board部分 - 占用剩余空间并可滚动
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomTheme.greyColor.shade100,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      margin: const EdgeInsets.only(bottom: 12.0),
                      child: controller.selectedBuffets.isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: DeskOpenDialogContentBuffetActionBoard(
                                tag: widget.tag,
                              ),
                            )
                          : Center(
                              child: Text(
                                '请选择自助餐套餐'.tr,
                                style: TextStyle(
                                  color: CustomTheme.greyColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                    ),
                  ),

                  // 底部固定部分
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 备注输入框
                      if (widget.isShowRemark) ...[
                        SizedBox(
                          height: 38.0.scaleHeight,
                          child: TtInput(
                            height: 38.0.scaleHeight,
                            hintText: '请输入备注'.tr,
                            value: controller.openRemark,
                            focusNode: controller.remarkFocusNode,
                            onChanged: (value) {
                              controller.openRemark = value;
                            },
                          ),
                        ),
                        const SizedBox(height: 12.0),
                      ],
                      // 键盘 - 只在输入框未聚焦时显示
                      Obx(
                        () => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 204.0,
                          child: Keyboard(
                            showDot: false,
                            isConfirmLoading: isLoading.value,
                            onNumberTap: (text) {
                              if (controller.selectedCustomerTypeUuid != null) {
                                controller.inputNumberByKeyboard(text);
                              }
                            },
                            onClearTap: () {
                              if (controller.selectedCustomerTypeUuid != null) {
                                controller.inputNumberByKeyboard('清空');
                              }
                            },
                            onConfirmTap: () async {
                              if (controller.selectedCustomerTypeUuid != null) {
                                // 先处理输入，然后取消选中状态
                                controller.inputNumberByKeyboard('确定');
                              }

                              try {
                                final DeskOpenModel? openModel = await controller.generateOpenModel();
                                if (openModel == null) return;
                                isLoading.value = true;
                                final result = await widget.onConfirm(openModel);
                                if (result == true) {
                                  Get.back(result: true);
                                }
                              } catch (error, stackTrace) {
                                debugPrint('onConfirmTap Error: $error\n$stackTrace');
                              } finally {
                                isLoading.value = false;
                              }
                            },
                            onExitTap: () {
                              if (controller.selectedCustomerTypeUuid != null) {
                                controller.inputNumberByKeyboard('退出');
                              } else {
                                Get.back(result: false);
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
