import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/reason/return_reason.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_return_dishes/order_return_dishes_controller.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_return_dishes/order_return_dishes_model.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderReturnDishesView extends StatelessWidget {
  final String productName; // 商品名称
  final bool isFinished; // 是否完成
  final int productNum; // 商品数量
  final int initProductNum; // 初始化数量
  final Future<BaseList<ResponseReturnReason>?> Function()? onReasons; // 退菜原因请求方法
  final Future<bool> Function(OrderReturnDishesModel data)? onConfirm; // 确认回调请求方法

  const OrderReturnDishesView({
    super.key,
    this.productName = '',
    this.isFinished = false,
    this.productNum = 1,
    this.initProductNum = 1,
    this.onReasons,
    this.onConfirm,
  });

  bool get isDisabled => productNum == 1; // 是否禁用

  @override
  Widget build(BuildContext context) {
    // 退菜
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // 关闭键盘
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder(
        init: OrderReturnDishesController(
          initNum: initProductNum,
          fetchReasons: onReasons,
          fetchConfirm: onConfirm,
        ),
        dispose: (_) => Get.delete<OrderReturnDishesController>(),
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
                        '退菜'.tr,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 16.0.scaleHeight,
                      ),
                      Text(
                        isFinished
                            ? '此[@name]已制作，是否退菜?'.trParams(
                                {
                                  'name': productName,
                                },
                              )
                            : productName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (controller.reasonsList.isNotEmpty) ...[
                              SizedBox(
                                height: 10.0,
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
                                          buttonType: controller.returnIds.contains(item.uuid)
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
                            ],
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0.scaleHeight,
                      ),
                      //
                      TtInput(
                        height: 80.0.scaleHeight,
                        maxLines: 4,
                        hintText: '请输入退菜原因'.tr,
                        onFocus: () {
                          controller.isFocus = !controller.isFocus;
                        },
                        value: controller.reason,
                        onChanged: (val) {
                          controller.reason = val;
                        },
                      ),
                      //
                      SizedBox(
                        height: 10.0.scaleHeight,
                      ),
                      Text(
                        '退菜数量'.tr,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 6.0.scaleHeight,
                      ),
                      Obx(
                        () => TtInput(
                          isDisabled: isDisabled,
                          height: 40.0.scaleHeight,
                          value: controller.num,
                          readOnly: true,
                          isShowDelete: true,
                          useFocusedBorderAsEnabled: controller.isFocus && !isDisabled,
                          hintText: '请输入退菜数量'.tr,
                          onChanged: (val) {
                            controller.num = val;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0.scaleHeight),
                Obx(
                  () => AnimatedContainer(
                    duration: Duration(
                      milliseconds: 100,
                    ),
                    height: controller.isFocus ? 260.0 : 260.0,
                    color: CustomTheme.greyColor.shade100,
                    child: Obx(
                      () => Keyboard(
                        padding: EdgeInsets.only(
                          top: 16.0.scalePadding,
                          left: 24.0.scalePadding,
                          right: 24.0.scalePadding,
                          bottom: 24.0.scalePadding,
                        ),
                        isConfirmLoading: controller.isLoading,
                        onConfirmTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          if (controller.isLoading) return;
                          controller.handleConfirm();
                        },
                        onNumberTap: (val) {
                          if (isDisabled) return;
                          FocusManager.instance.primaryFocus?.unfocus();
                          if (controller.isLoading) return;
                          controller.isFocus = true;
                          final currentValue = controller.num == '0' ? '' : controller.num;
                          final newValue = currentValue + val;
                          // 确保输入的是正整数且不超过最大值
                          int? num = int.tryParse(newValue);
                          if (num != null && num > 0) {
                            // 限制最大值
                            if (num > productNum) {
                              DialogManager.showToast(
                                '退菜数量不能超过菜品数量（@num份）'.trParams(
                                  {
                                    'num': productNum.toString(),
                                  },
                                ),
                              );
                              num = productNum;
                            }
                            //
                            controller.num = num.toString();
                          }
                        },
                        onClearTap: () {
                          if (isDisabled) return;
                          FocusManager.instance.primaryFocus?.unfocus();
                          if (controller.isLoading) return;
                          //
                          controller.num = '';
                        },
                        onExitTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          if (controller.isLoading) return;
                          //
                          Get.back();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
