// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/order/components/darwer/drawer_wrap_text.dart';
import 'package:pos/controllers/order_list/order_details_controller.dart';
import 'package:pos/model/response/order_list_details/detail.dart';
import 'package:pos/model/response/order_list_details/resp_order_info.dart';
import 'package:pos/model/response/order_list_details/resp_order_info_pay_types.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class OrderDetailsInfo extends StatelessWidget {
  final Detail detail;
  const OrderDetailsInfo({
    super.key,
    required this.detail,
  });
  // 获取控制器实例 - 复杂点，但生命力更强
  OrderDetailsController get controller {
    if (Get.isRegistered<OrderDetailsController>()) {
      return Get.find<OrderDetailsController>();
    }
    return Get.put(OrderDetailsController());
  }

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
              title: '订单类型'.tr,
              text: detail.billType == 0 ? '桌台订单'.tr : '点餐订单'.tr,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '订单号'.tr,
              text: detail.orderNo,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '会员'.tr,
              text: detail.memberUuids != '' ? '${'会员ID'.tr}(${detail.memberUuids})' : '-',
              itemWidth: itemWidth,
            ),
            if (detail.saleOrders.isNotEmpty)
              DrawerWrapText(
                title: '用餐方式'.tr,
                text: detail.saleOrders[0].diningMethod == 0 ? '店内用餐'.tr : '打包'.tr,
                itemWidth: itemWidth,
              ),
            DrawerWrapText(
              title: detail.billType == 0 ? '桌号'.tr : '序号'.tr,
              text: detail.serialNo,
              itemWidth: itemWidth,
            ),
            if (detail.isBuffet)
              DrawerWrapText(
                title: '自助餐'.tr,
                text: detail.buffetNames,
                itemWidth: itemWidth,
              ),
            DrawerWrapText(
              title: '收银员'.tr,
              text: detail.cashierName,
              itemWidth: itemWidth,
            ),
            if (listStatus(detail.saleOrders))
              for (RespOrderInfoPayTypes item in detail.payTypes)
                DrawerWrapText(
                  title: '支付方式'.tr,
                  payStatus: item.status,
                  text: item.paymentTypeName,
                  itemWidth: itemWidth,
                ),
            if (!listStatus(detail.saleOrders))
              DrawerWrapText(
                title: '支付方式'.tr,
                text: '-',
                itemWidth: itemWidth,
              ),
            DrawerWrapText(
              title: '订单金额'.tr,
              text: detail.orderAmount.toString().primaryCurrency,
              subText: detail.orderAmount.toString().secondaryCurrency,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '实付金额'.tr,
              text: detail.paymentAmount.toString().primaryCurrency,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '支付时间'.tr,
              text: detail.finishTime != 0 ? detail.finishTime.tz : '-',
              itemWidth: itemWidth,
            ),
            if (detail.saleOrders.isNotEmpty && detail.saleOrders[0].isFree)
              DrawerWrapText(
                title: '免单原因'.tr,
                text: detail.saleOrders[0].freeReason.translate == '' ? '-' : detail.saleOrders[0].freeReason.translate,
                itemWidth: itemWidth,
              ),
            if (detail.refundAmount > 0)
              DrawerWrapText(
                title: '退款金额'.tr,
                text: detail.refundAmount.toString().primaryCurrency,
                itemWidth: itemWidth,
              ),
            DrawerWrapText(
              title: '订单状态'.tr,
              text: detail.status == 0
                  ? '待付款'.tr
                  : detail.status == 1
                      ? '已完成'.tr
                      : detail.status == 2
                          ? '已取消'.tr
                          : '-',
              itemWidth: itemWidth,
            ),
            if (detail.cancelReason != '')
              DrawerWrapText(
                title: '取消原因'.tr,
                text: detail.cancelReason,
                itemWidth: itemWidth,
              ),
            DrawerWrapText(
              title: '订单时间'.tr,
              text: '${detail.createTime.tz} ${'至'.tr} ${detail.finishTime != 0 ? detail.finishTime.tz : '-'}',
              itemWidth: itemWidth,
            ),
            if (detail.remark != '')
              DrawerWrapText(
                title: '备注'.tr,
                text: detail.remark,
                itemWidth: itemWidth,
              ),
          ],
        );
      },
    );
  }

  bool listStatus(List<RespOrderInfo> list) {
    return list.any((element) => element.status != 0);
  }
}
