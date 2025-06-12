// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/common/category_column.dart';
import 'package:pos/components/order/components/darwer/drawer_log.dart';
import 'package:pos/components/order/components/darwer/drawer_sub_title.dart';
import 'package:pos/components/order/components/darwer/drawer_title.dart';
import 'package:pos/components/order/components/order_details/order_details_action_bar.dart';
import 'package:pos/components/order/components/order_details/order_details_info.dart';
import 'package:pos/components/order/components/order_details/order_product_table.dart';
import 'package:pos/components/order/components/order_details/table_order_info.dart';
import 'package:pos/controllers/order_list/order_details_controller.dart';
import 'package:pos/controllers/order_list/order_re_refund_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});
  // 获取控制器实例 - 复杂点，但生命力更强
  OrderDetailsController get controller {
    if (Get.isRegistered<OrderDetailsController>()) {
      return Get.find<OrderDetailsController>();
    }
    return Get.put(OrderDetailsController());
  }

  OrderReRefundController get orderReRefundController {
    if (Get.isRegistered<OrderReRefundController>()) {
      return Get.find<OrderReRefundController>();
    }
    return Get.put(OrderReRefundController());
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        DrawerTitle(title: '订单详情'.tr),
        Expanded(
          child: Obx(
            () {
              if (controller.isLoading) {
                return Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              }
              return ListView(
                children: [
                  DrawerSubTitle(title: '基本信息'.tr),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: CustomTheme.greyColor.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Obx(
                        () => OrderDetailsInfo(
                          detail: controller.detail,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  DrawerSubTitle(title: '商品信息'.tr),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Obx(
                      () => Column(
                        children: [
                          if (controller.detail.saleOrders.length > 1)
                            Obx(
                              () => CategoryColumn(
                                dataList: controller.categoryList,
                                selectedIndex: controller.selectedIndex,
                                onTap: (index) {
                                  controller.selectedIndex = index;
                                },
                              ),
                            ),
                          if (controller.detail.saleOrders.length > 1) SizedBox(height: 16),
                          if (controller.detail.saleOrders.length > 1)
                            Obx(
                              () => Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: CustomTheme.greyColor.shade100,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TableOrderInfo(
                                  saleOrders: controller.detail.saleOrders,
                                  selectedIndex: controller.selectedIndex,
                                ),
                              ),
                            ),
                          if (controller.detail.saleOrders.length > 1) SizedBox(height: 16),
                          Obx(
                            () => OrderProductTable(
                              saleOrders: controller.detail.saleOrders,
                              selectedIndex: controller.selectedIndex,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  DrawerSubTitle(title: '操作记录'.tr),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: CustomTheme.greyColor.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Obx(
                        () => OrderDetailsLog(
                          operationLogList: controller.operationLog,
                          onTap: (returnAmountUuid, returnOrderUuid, bankCode, accountName, accountNo) {
                            orderReRefundController.handleReReturnOrder(
                              returnAmountUuid,
                              returnOrderUuid,
                              bankCode,
                              accountName,
                              accountNo,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Obx(
          () => DrawerActionBar(
            extra: controller.extra,
            saleBillUuid: controller.detail.saleBillUuid,
            saleOrderUuid: controller.detail.saleOrders.isNotEmpty ? controller.detail.saleOrders[0].saleOrderUuid : 0,
            isMain: controller.isMain,
            isNewOrder: controller.isNewOrder,
          ),
        ),
      ],
    );
  }
}
