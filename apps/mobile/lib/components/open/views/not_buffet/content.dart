import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenContentNotBuffet extends StatefulWidget {
  final String tag;

  const DeskOpenContentNotBuffet({
    super.key,
    required this.tag,
  });

  @override
  State<DeskOpenContentNotBuffet> createState() => _DeskOpenContentNotBuffetState();
}

class _DeskOpenContentNotBuffetState extends State<DeskOpenContentNotBuffet> {
  bool isInputFocus = false;
  bool needResetInput = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
      id: widget.tag,
      tag: widget.tag,
      builder: (controller) {
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

        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: CustomTheme.greyColor.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Obx(() {
                  return Container(
                    height: 46.0.scaleHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: TtInput(
                      height: 46.0.scaleHeight,
                      hintText: '请输入顾客数量'.tr,
                      keyboardType: TextInputType.number,
                      fontSize: 16.0,
                      readOnly: true,
                      value: controller.totalCustomerCount == 0 ? "" : controller.totalCustomerCount.toString(),
                      focusNode: controller.customerCountFocusNode,
                      enableInteractiveSelection: false,
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
                const SizedBox(height: 16.0),
                SizedBox(
                  height: 200.0.scaleHeight,
                  child: Keyboard(
                    padding: const EdgeInsets.all(0),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    showFunctionButtons: false,
                    showDot: false,
                    showConfirmButton: false,
                    showExitButton: false,
                    onNumberTap: (text) {
                      handleKeyboardInput(text);
                    },
                    onClearTap: () {
                      handleKeyboardInput('清空');
                    },
                  ),
                ),
              ],
            ),
          ),
          // child: SizedBox(
          //   width: double.infinity,
          //   child: LayoutBuilder(
          //     builder: (BuildContext context, BoxConstraints constraints) {
          //       return Obx(() {
          //         // 假设每行显示3个子项
          //         int itemsPerRow = 4;
          //         // 每个子项的宽度
          //         double itemSize = (constraints.maxWidth - 24) / itemsPerRow;

          //         return Wrap(
          //           spacing: 8.0,
          //           runSpacing: 8.0,
          //           children: [
          //             ...List.generate(
          //               9,
          //               (index) => _buildNumberButton(
          //                 index + 1,
          //                 size: itemSize,
          //                 onTap: () {
          //                   setState(() {
          //                     isInputFocus = false;
          //                     needResetInput = true;
          //                   });

          //                   controller.totalCustomerCount = index + 1;
          //                 },
          //                 isSelected: controller.totalCustomerCount == index + 1 && !isInputFocus,
          //               ),
          //             ),
          //             Container(
          //               width: itemSize * 3 + 16,
          //               height: itemSize.scaleHeight,
          //               decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.circular(8),
          //               ),
          //               child: TtInput(
          //                 height: itemSize.scaleHeight,
          //                 hintText: '人数'.tr,
          //                 keyboardType: TextInputType.number,
          //                 fontSize: 20.0,
          //                 textAlign: TextAlign.center,
          //                 value: controller.totalCustomerCount == 0 || !isInputFocus
          //                     ? ""
          //                     : controller.totalCustomerCount.toString(),
          //                 onChanged: (value) {
          //                   if (value.isNotEmpty) {
          //                     final count = int.tryParse(value) ?? 0;
          //                     if (count > 0 && count <= 999) {
          //                       controller.totalCustomerCount = count;
          //                       return;
          //                     }

          //                     if (count > 999) {
          //                       DialogManager.showToast('最大人数不能超过999'.tr);
          //                       controller.totalCustomerCount = 999;
          //                       return;
          //                     }
          //                   }

          //                   controller.totalCustomerCount = 0;
          //                 },
          //                 onFocus: () {
          //                   if (needResetInput) {
          //                     controller.totalCustomerCount = 0;
          //                   }
          //                   setState(() {
          //                     isInputFocus = true;
          //                     needResetInput = false;
          //                   });
          //                 },
          //               ),
          //             ),
          //           ],
          //         );
          //       });
          //     },
          //   ),
          // ),
        );
      },
    );
  }

  // Widget _buildNumberButton(
  //   int number, {
  //   double size = 64,
  //   VoidCallback? onTap,
  //   bool isSelected = false,
  // }) {
  //   return GestureDetector(
  //     onTap: onTap,
  //     child: Container(
  //       width: size,
  //       height: size,
  //       decoration: BoxDecoration(
  //         color: isSelected ? CustomTheme.primaryColor.shade50 : Colors.white,
  //         borderRadius: BorderRadius.circular(8),
  //         border: Border.all(
  //           color: isSelected ? CustomTheme.primaryColor : CustomTheme.secondaryColor.shade300,
  //           width: 1,
  //         ),
  //       ),
  //       child: Center(
  //         child: Text(
  //           number.toString(),
  //           style: TextStyle(
  //             fontSize: 20.0,
  //             fontWeight: FontWeight.w600,
  //             color: isSelected ? CustomTheme.primaryColor : CustomTheme.secondaryColor,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
