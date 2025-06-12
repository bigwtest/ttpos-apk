import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_price/order_price_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:ttpos_ui/utils/util.dart';

class OrderPriceView extends StatelessWidget {
  final String productName; // 商品名称
  final String price; // 初始化价格
  final Future<bool> Function(double price)? onConfirm; // 确认回调

  const OrderPriceView({
    super.key,
    this.productName = '',
    this.price = '',
    this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    // 改价
    return GetBuilder(
      init: OrderPriceController(
        initPrice: price,
        fetchConfirm: onConfirm,
      ),
      dispose: (_) => Get.delete<OrderPriceController>(),
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
                      '价格'.tr,
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
                    Obx(
                      () => TtInput(
                        height: 40.0.scaleHeight,
                        fontSize: 13.0,
                        value: controller.price,
                        readOnly: true,
                        isShowDelete: true,
                        useFocusedBorderAsEnabled: true,
                        hintText: '请输入价格'.tr,
                        onChanged: (val) {
                          controller.price = val;
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
                    isConfirmLoading: controller.isLoading,
                    onConfirmTap: controller.handleConfirm,
                    onNumberTap: (val) {
                      if (controller.isLoading) return;
                      //
                      final newValue = Util.validateNumberInput(controller.price, val, maxValue: globalMaxPrice);
                      controller.price = newValue ?? '';
                    },
                    onClearTap: () {
                      if (controller.isLoading) return;
                      //
                      controller.price = '';
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
