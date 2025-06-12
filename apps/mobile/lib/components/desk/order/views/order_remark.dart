import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_remark/order_remark_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderRemark extends StatelessWidget {
  final String title;
  final String remark;
  final int maxLength; // 限制字数
  final Future<bool> Function(String remark)? onConfirm; // 确认回调

  const OrderRemark({
    super.key,
    this.title = '',
    this.remark = '',
    this.maxLength = 50,
    this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OrderRemarkController(
        initRemark: remark,
        fetchConfirm: onConfirm,
      ),
      dispose: (_) => Get.delete<OrderRemarkController>(),
      builder: (controller) => Container(
        width: 320.0.scaleWidth,
        // height: 254.0.scaleHeight,
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.scalePadding,
          vertical: 24.0.scalePadding,
        ),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16.0.scalePadding,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                '备注'.tr,
                style: TextStyle(
                  color: CustomTheme.secondaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                color: CustomTheme.secondaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Obx(
              () => TtInput(
                isShowClose: controller.remark.isNotEmpty,
                hintText: '请输入备注'.tr,
                fontSize: 16.0,
                height: 46.0.scaleHeight,
                maxLength: 50,
                value: controller.remark,
                onChanged: (val) {
                  controller.remark = val;
                },
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              spacing: 10.0.scalePadding,
              children: [
                Expanded(
                  child: TtButton(
                    text: '取消'.tr,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    buttonType: ActionButtonType.normal,
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
                Expanded(
                  child: Obx(
                    () => TtButton(
                      text: '确定'.tr,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      isLoading: controller.isLoading,
                      onTap: controller.handleConfirm,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
