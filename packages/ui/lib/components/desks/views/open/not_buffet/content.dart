// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
// Project imports:
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DeskOpenDialogContentNotBuffet extends StatefulWidget {
  final String tag;
  final Future<bool> Function(DeskOpenModel openModel) onConfirm;
  final bool isShowRemark;

  const DeskOpenDialogContentNotBuffet({
    super.key,
    required this.tag,
    required this.onConfirm,
    this.isShowRemark = true,
  });

  @override
  State<DeskOpenDialogContentNotBuffet> createState() => _DeskOpenDialogContentNotBuffetState();
}

class _DeskOpenDialogContentNotBuffetState extends State<DeskOpenDialogContentNotBuffet> {
  final isLoading = false.obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
      id: widget.tag,
      tag: widget.tag,
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    return SizedBox(
                      height: 38.0.scaleHeight,
                      child: TtInput(
                        height: 38.0.scaleHeight,
                        hintText: '请输入顾客数量'.tr,
                        keyboardType: TextInputType.number,
                        readOnly: true,
                        value: controller.totalCustomerCount == 0 ? "" : controller.totalCustomerCount.toString(),
                        focusNode: controller.customerCountFocusNode,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            final newValue = int.tryParse(value) ?? 0;
                            controller.totalCustomerCount = newValue > 999 ? 999 : newValue;
                          } else {
                            controller.totalCustomerCount = 0;
                          }
                        },
                        isShowDelete: true,
                      ),
                    );
                  }),

                  // 备注
                  if (widget.isShowRemark) ...[
                    SizedBox(height: 16.0),
                    SizedBox(
                      height: 38.0.scaleHeight,
                      child: Obx(() {
                        return TtInput(
                          height: 38.0.scaleHeight,
                          hintText: '请输入备注'.tr,
                          value: controller.openRemark,
                          focusNode: controller.remarkFocusNode,
                          onChanged: (value) {
                            controller.openRemark = value;
                          },
                          isShowClose: true,
                        );
                      }),
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Obx(
              () {
                void handleKeyboardInput(String text) {
                  controller.customerCountFocusNode.requestFocus();

                  final currentValue = controller.totalCustomerCount.toString();

                  if (text == '清空') {
                    controller.totalCustomerCount = 0;
                    return;
                  }

                  if (text == '退格') {
                    if (currentValue.isNotEmpty) {
                      final newValue = currentValue.substring(0, currentValue.length - 1);
                      if (newValue.isEmpty) {
                        controller.totalCustomerCount = 0;
                        return;
                      }
                      final count = int.tryParse(newValue) ?? 0;
                      controller.totalCustomerCount = count > 999 ? 999 : count;
                    }
                    return;
                  }

                  final newValue = currentValue + text;
                  final count = int.tryParse(newValue) ?? 0;
                  controller.totalCustomerCount = count > 999 ? 999 : count;
                }

                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: controller.isRemarkFocused ? 274.0 : 274.0,
                  child: Keyboard(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 16.0,
                      bottom: 20.0,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    showDot: false,
                    isConfirmLoading: isLoading.value,
                    onNumberTap: (text) {
                      handleKeyboardInput(text);
                    },
                    onClearTap: () {
                      handleKeyboardInput('清空');
                    },
                    onConfirmTap: () async {
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
                      Get.back(result: false);
                    },
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
