// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/controllers/order_list/order_reverse_settle_controller.dart';
import 'package:pos/model/response/order_list/order_reverse_settle_details.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderReverseCheckoutDialog extends StatelessWidget {
  const OrderReverseCheckoutDialog({
    super.key,
  });
  // 获取控制器实例 - 复杂点，但生命力更强
  OrderReverseSettleController get controller {
    if (Get.isRegistered<OrderReverseSettleController>()) {
      return Get.find<OrderReverseSettleController>();
    }
    return Get.put(OrderReverseSettleController());
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 670,
        padding: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '反结账'.tr,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: CustomTheme.secondaryColor,
              ),
            ),
            SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              child: Text(
                _getDialogMessage(controller.reverseSettleDetails),
                style: TextStyle(
                  fontSize: 12.06,
                  color: CustomTheme.secondaryColor,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: CustomTheme.greyColor.shade100,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildInfoRow(
                        '订单号'.tr,
                        controller.reverseSettleDetails.saleBillNo,
                        false,
                      ),
                      SizedBox(width: 16.0),
                      _buildInfoRow(
                        '支付方式'.tr,
                        controller.reverseSettleDetails.payMethods.join(','),
                        false,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Flex(
                    direction: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow(
                        '订单金额'.tr,
                        controller.reverseSettleDetails.orderAmount.toCleanString.primaryCurrency,
                        true,
                      ),
                      SizedBox(width: 16.0),
                      _buildInfoRow(
                        '实付金额'.tr,
                        controller.reverseSettleDetails.paymentAmount.toCleanString.primaryCurrency,
                        false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            if (controller.reverseSettleDetails.desks != null &&
                controller.reverseSettleDetails.desks?.originDeskAvailable == false)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 170,
                    minWidth: double.infinity,
                  ),
                  child: SingleChildScrollView(
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        // 假设每行显示3个子项
                        int itemsPerRow = 3;
                        // 每个子项的宽度
                        double itemWidth = (constraints.maxWidth - 20) / itemsPerRow; // 20是因为左右的总padding是10+10
                        return Obx(
                          () => Wrap(
                            spacing: 10.0, // 主轴方向的间距
                            runSpacing: 10.0, // 交叉轴方向的间距
                            children: List.generate(controller.reverseSettleDetails.desks?.list.length ?? 0, (index) {
                              return _buildDeskList(
                                  index,
                                  controller.selectedIndex,
                                  controller.reverseSettleDetails.desks?.list[index].serialNo ?? '',
                                  itemWidth, (index) {
                                controller.selectedIndex = index;
                                controller.selectedDeskUuid =
                                    controller.reverseSettleDetails.desks?.list[index].uuid ?? 0;
                              });
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            Row(
              children: [
                Expanded(
                  child: TtButton(
                    onTap: () => {Get.back()},
                    text: '取消'.tr,
                    fontWeight: FontWeight.w600,
                    buttonType: ActionButtonType.outline,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TtButton(
                    onTap: () => {
                      controller.postOrderReverse(),
                    },
                    text: '确定'.tr,
                    fontWeight: FontWeight.w600,
                    buttonType: ActionButtonType.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, bool? refunded) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.06,
                color: CustomTheme.secondaryColor.shade200,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 12.06,
                color: CustomTheme.secondaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeskList(int index, int selectedIndex, String serialNo, double itemWidth, Function(int) onTap) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        width: itemWidth,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: selectedIndex == index ? CustomTheme.primaryColor.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: selectedIndex == index ? CustomTheme.primaryColor.shade300 : CustomTheme.secondaryColor.shade700,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            serialNo,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              color: CustomTheme.secondaryColor,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  String _getDialogMessage(OrderReverseSettleDetails details) {
    if (details.saleBillType != 1) {
      return details.desks?.originDeskAvailable == false ? '当前桌台使用中，请选择其他桌台打开'.tr : '是否将订单恢复为反结账'.tr;
    }

    return details.hasInstantOrder! ? '目前点餐有待付款订单，是否将订单挂起后操作此单'.tr : '是否将订单恢复为反结账'.tr;
  }
}
