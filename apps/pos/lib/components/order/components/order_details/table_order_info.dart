// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/order/components/darwer/drawer_wrap_text.dart';
import 'package:pos/model/response/order_list_details/resp_order_info.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class TableOrderInfo extends StatelessWidget {
  final List<RespOrderInfo> saleOrders;
  final int selectedIndex;
  const TableOrderInfo({
    super.key,
    required this.saleOrders,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // 假设每行显示3个子项
        int itemsPerRow = 4;
        // 每个子项的宽度
        double itemWidth = (constraints.maxWidth - 30) / itemsPerRow; // 20是因为左右的总padding是10+10
        return Wrap(
          spacing: 10.0, // 主轴方向的间距
          runSpacing: 10.0, // 交叉轴方向的间距
          children: [
            DrawerWrapText(
              title: '订单号'.tr,
              text: saleOrders[selectedIndex].orderNo,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '订单金额'.tr,
              text: saleOrders[selectedIndex].orderAmount.toString().primaryCurrency,
              subText: saleOrders[selectedIndex].orderAmount.toString().secondaryCurrency,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '实付金额'.tr,
              text: saleOrders[selectedIndex].paymentAmount.toString().primaryCurrency,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '会员'.tr,
              text: saleOrders[selectedIndex].memberName.isNotEmpty
                  ? '会员ID (${saleOrders[selectedIndex].memberName})'
                  : '-',
              itemWidth: itemWidth,
            ),
          ],
        );
      },
    );
  }
}
