import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_cancel/desk_cancel_controller.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_cancel/desk_cancel_model.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskCancelView extends StatelessWidget {
  final int maxLength; // 限制字数
  final List<DeskCancelModel> products; // 商品列表
  final Future<bool> Function(String reason)? onConfirm;
  final String? message;

  const DeskCancelView({
    super.key,
    this.maxLength = 50,
    this.products = const [],
    this.onConfirm,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    // 整单取消、清台（清除桌台）
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // 关闭键盘
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder(
        init: DeskCancelController(
          fetchConfirm: onConfirm,
        ),
        dispose: (_) => Get.delete<DeskCancelController>(),
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
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '提示'.tr,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 16.0.scaleHeight,
                ),
                Text(
                  message ?? '此单有商品已送厨，是否取消此笔交易？'.tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.0.scaleHeight,
                ),
                Container(
                  constraints: BoxConstraints(
                    minHeight: 0,
                    maxHeight: 100.0.scaleHeight,
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: products.length,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 4.0.scaleHeight,
                    ),
                    itemBuilder: (context, index) {
                      final item = products[index];
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0.scalePadding,
                          vertical: 6.0.scalePadding,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            4.0,
                          ),
                          color: CustomTheme.greyColor.shade100,
                        ),
                        child: Row(
                          spacing: 4.0.scalePadding,
                          children: [
                            Expanded(
                              child: Text(
                                item.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis, // 添加文本溢出处理
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Text(
                              '×${item.quantity}',
                              style: TextStyle(
                                color: CustomTheme.greyColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0.scaleHeight,
                ),
                //
                Obx(
                  () => TtInput(
                    value: controller.reason,
                    height: 80.0.scaleHeight,
                    maxLength: 50,
                    maxLines: 4,
                    // focusNode: FocusNode()..requestFocus(),
                    autoFocus: true,
                    useFocusedBorderAsEnabled: true,
                    hintText: '请输入原因'.tr,
                    onChanged: (val) {
                      controller.reason = val;
                    },
                  ),
                ),
                // SizedBox(
                //   height: 4.0,
                // ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Obx(
                    () => Text(
                      '${controller.reason.length}/$maxLength',
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
                        fontWeight: FontWeight.w600,
                        buttonType: ActionButtonType.normal,
                        onTap: () {
                          if (controller.isLoading) return;
                          Get.back();
                        },
                      ),
                    ),
                    // Expanded(
                    //   child: TtButton(
                    //     text: '清空'.tr,
                    //     buttonType: ActionButtonType.normal,
                    //     onTap: () {
                    //       if (controller.isLoading) return;
                    //       controller.reason = '';
                    //     },
                    //   ),
                    // ),
                    Expanded(
                      child: Obx(
                        () => TtButton(
                          text: '确定'.tr,
                          fontWeight: FontWeight.w600,
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
        ),
      ),
    );
  }
}
