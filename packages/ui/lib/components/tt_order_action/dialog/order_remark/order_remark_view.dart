import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_remark/order_remark_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderRemarkView extends StatelessWidget {
  final String productName; // 商品名称
  final String? remark; // 初始化备注
  final int maxLength; // 限制字数
  final Future<bool> Function(String remark)? onConfirm; // 确认回调

  const OrderRemarkView({
    super.key,
    this.productName = '',
    this.remark,
    this.maxLength = 50,
    this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    // 备注
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // 关闭键盘
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder(
        init: OrderRemarkController(
          initRemark: remark,
          fetchConfirm: onConfirm,
        ),
        dispose: (_) => Get.delete<OrderRemarkController>(),
        builder: (controller) => Container(
          width: 550.0.scaleWidth,
          padding: EdgeInsets.all(24.0.scalePadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '备注'.tr,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16.0.scaleHeight,
                ),
                Text(
                  productName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.0.scaleHeight,
                ),
                //
                Obx(
                  () => TtInput(
                    value: controller.remark,
                    height: 80.0.scaleHeight,
                    fontSize: 13.0,
                    maxLength: 50,
                    maxLines: 4,
                    // focusNode: FocusNode()..requestFocus(),
                    autoFocus: true,
                    useFocusedBorderAsEnabled: true,
                    hintText: '请输入备注'.tr,
                    onChanged: (val) {
                      controller.remark = val;
                    },
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Obx(
                    () => Text(
                      '${controller.remark.length}/$maxLength',
                      style: TextStyle(
                        color: CustomTheme.greyColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 20.0.scaleHeight,
                ),
                Row(
                  spacing: 10.0.scalePadding,
                  children: [
                    Expanded(
                      child: TtButton(
                        text: '退出'.tr,
                        buttonType: ActionButtonType.normal,
                        fontWeight: FontWeight.w600,
                        onTap: () {
                          if (controller.isLoading) return;
                          Get.back();
                        },
                      ),
                    ),
                    Expanded(
                      child: TtButton(
                        text: '清空'.tr,
                        buttonType: ActionButtonType.normal,
                        fontWeight: FontWeight.w600,
                        onTap: () {
                          if (controller.isLoading) return;
                          controller.remark = '';
                        },
                      ),
                    ),
                    Expanded(
                      child: Obx(
                        () => TtButton(
                          text: '确定'.tr,
                          isLoading: controller.isLoading,
                          fontWeight: FontWeight.w600,
                          onTap: controller.handleConfirm,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
