// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/order/order_for_meals.dart';
import 'package:pos/components/order/top_up_order.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/order_list/order_for_meals_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_order_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderTabBar extends StatelessWidget {
  OrderTabBar({super.key});
  final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
  final OrderForMealsController orderForMealsController = Get.find<OrderForMealsController>();
  final TopUpOrderController topUpOrderController = Get.find<TopUpOrderController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Obx(() {
        // 根据权限计算标签数量
        int tabLength = 0;
        if (baseInfoController.hasPermission(PermissionKey.orderStoreOrder)) {
          tabLength++;
        }
        if (baseInfoController.hasPermission(PermissionKey.recharge)) {
          tabLength++;
        }
        return DefaultTabController(
          length: tabLength,
          animationDuration: Duration.zero,
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TabBar(
                        indicator: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 2,
                              color: CustomTheme.primaryColor.shade600,
                            ),
                          ),
                        ),
                        dividerColor: CustomTheme.greyColor.shade200,
                        labelColor: CustomTheme.primaryColor.shade600,
                        unselectedLabelColor: CustomTheme.secondaryColor,
                        tabAlignment: TabAlignment.start,
                        labelPadding: EdgeInsets.symmetric(vertical: 8.0),
                        isScrollable: true,
                        onTap: (index) {
                          if (index == 0) {
                            orderForMealsController.search();
                          } else {
                            topUpOrderController.search();
                          }
                        },
                        tabs: [
                          if (baseInfoController.hasPermission(PermissionKey.orderStoreOrder))
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 32.0),
                              child: Text(
                                '用餐订单'.tr,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          if (baseInfoController.hasPermission(PermissionKey.recharge))
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 32.0),
                              child: Text(
                                '充值订单'.tr,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (Get.isRegistered<BaseInfoController>() &&
                        Get.find<BaseInfoController>().isModuleAvailableOldOrder)
                      Obx(
                        () => Stack(
                          children: [
                            SizedBox(
                              width: 59.0.scaleWidth,
                              height: 39.0.scaleHeight,
                              child: Transform.scale(
                                scale: 1.0.scaleWidth,
                                child: CupertinoSwitch(
                                  value: orderForMealsController.isNewOrder,
                                  activeTrackColor: CustomTheme.primaryColor.shade600,
                                  onChanged: (bool? value) {
                                    if (value != orderForMealsController.isNewOrder) {
                                      orderForMealsController.isNewOrder = value!;
                                    }
                                    orderForMealsController.search();
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              left: orderForMealsController.isNewOrder ? 10.0.scaleWidth : 36.0.scaleWidth,
                              top: 12.0.scaleHeight,
                              child: Text(
                                orderForMealsController.isNewOrder ? '新'.tr : '旧'.tr,
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w600,
                                  color: orderForMealsController.isNewOrder ? Colors.white : CustomTheme.secondaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    if (baseInfoController.hasPermission(PermissionKey.orderStoreOrder)) OrderForMeals(),
                    if (baseInfoController.hasPermission(PermissionKey.recharge)) TopUpOrder(),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
