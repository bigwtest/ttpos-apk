import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/reason/free_or_gift_reason.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_gift_dishes/order_gift_dishes_controller.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_gift_dishes/order_gift_dishes_model.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderGiftDishesView extends StatelessWidget {
  final Future<BaseList<ResponseFreeOrGiftReason>?> Function()? onReasons;
  final Future<bool> Function(OrderGiftDishesViewModel data)? onConfirm;

  const OrderGiftDishesView({
    super.key,
    this.onReasons,
    this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    // 赠菜
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // 关闭键盘
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder(
        init: OrderGiftDishesController(
          fetchReasons: onReasons,
          fetchConfirm: onConfirm,
        ),
        dispose: (_) => Get.delete<OrderGiftDishesController>(),
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
                  '赠菜'.tr,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16.0.scaleHeight,
                ),
                // 赠菜原因
                Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (controller.reasonsList.isNotEmpty) ...[
                        Text(
                          '赠菜原因'.tr,
                          style: TextStyle(
                            color: CustomTheme.secondaryColor,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Wrap(
                          spacing: 10.0.scalePadding,
                          runSpacing: 10.0.scalePadding,
                          children: controller.reasonsList
                              .map(
                                (item) => Obx(
                                  () => TtButton(
                                    fontSize: 12.0,
                                    text: item.localeName.translate,
                                    buttonType: controller.giftIds.contains(item.uuid)
                                        ? ActionButtonType.secondary
                                        : ActionButtonType.normal,
                                    onTap: () {
                                      controller.handleSelectReason(item.uuid);
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        SizedBox(
                          height: 10.0.scaleHeight,
                        ),
                      ],
                    ],
                  ),
                ),
                //
                TtInput(
                  height: 80.0.scaleHeight,
                  maxLines: 4,
                  hintText: '请输入赠菜原因'.tr,
                  autoFocus: true,
                  value: controller.reason,
                  useFocusedBorderAsEnabled: true,
                  onChanged: (val) {
                    controller.reason = val;
                  },
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
                        text: '取消'.tr,
                        fontWeight: FontWeight.w600,
                        buttonType: ActionButtonType.normal,
                        onTap: () {
                          if (controller.isLoading) return;
                          Get.back();
                        },
                      ),
                    ),
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
