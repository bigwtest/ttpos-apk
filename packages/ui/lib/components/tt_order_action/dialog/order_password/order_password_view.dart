import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_password/order_password_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderPasswordView extends StatelessWidget {
  final String? title; // 标题
  final String? hintText; // 输入框提示
  final int maxLength; // 限制输入最大长度
  final Future<bool> Function(String password)? onConfirm;

  const OrderPasswordView({
    super.key,
    this.title,
    this.hintText,
    this.maxLength = 16,
    this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OrderPasswordController(
        hintText: hintText,
        fetchConfirm: onConfirm,
      ),
      dispose: (_) => Get.delete<OrderPasswordController>(),
      builder: (controller) => Container(
        width: 550.0.scaleWidth,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.0.scalePadding,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 24.0.scalePadding,
                  left: 24.0.scalePadding,
                  right: 24.0.scalePadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? '密码'.tr,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 16.0.scaleHeight,
                    ),
                    Obx(
                      () => TtInput(
                        height: 40.0.scaleHeight,
                        fontSize: 13.0,
                        value: controller.password,
                        maxLength: maxLength,
                        obscureText: true,
                        readOnly: true,
                        isShowDelete: true,
                        useFocusedBorderAsEnabled: true,
                        hintText: hintText ?? '请输入密码'.tr,
                        onChanged: (val) {
                          controller.password = val;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 260.0.scaleHeight,
                color: CustomTheme.greyColor.shade100,
                child: Obx(
                  () => Keyboard(
                    padding: EdgeInsets.only(
                      top: 16.0.scalePadding,
                      left: 24.0.scalePadding,
                      right: 24.0.scalePadding,
                      bottom: 24.0.scalePadding,
                    ),
                    showDot: false,
                    isConfirmLoading: controller.isLoading,
                    onConfirmTap: controller.handleConfirm,
                    onNumberTap: (val) {
                      if (controller.password.length >= maxLength) return;
                      if (controller.isLoading) return;
                      controller.password += val;
                    },
                    onClearTap: () {
                      if (controller.isLoading) return;
                      //
                      controller.password = '';
                    },
                    onExitTap: () {
                      if (controller.isLoading) return;
                      //
                      Get.back();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
