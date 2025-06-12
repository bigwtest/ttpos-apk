// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/data/components/data_all_table.dart';
import 'package:pos/components/data/components/data_all_text.dart';
import 'package:pos/components/data/components/data_dashe_border.dart';
import 'package:pos/components/data/components/data_tax.dart';
import 'package:pos/components/data/components/data_title.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/data/data_controller.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataAll extends StatelessWidget {
  DataAll({super.key});
  final DataController dataController = Get.find<DataController>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: CustomTheme.greyColor.shade100,
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          child: Obx(
            () => Column(
              spacing: 8,
              children: [
                DataAllText(
                  label: '总销售额'.tr,
                  value: dataController.businessStatistics?.totalSales.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '原商品金额'.tr,
                  value: dataController.businessStatistics?.totalProductPrice.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '服务费'.tr,
                  value: dataController.businessStatistics?.totalServiceMoney.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '支付手续费'.tr,
                  value: dataController.businessStatistics?.totalPayFeeMoney.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '税费'.tr,
                  value: dataController.businessStatistics?.totalTaxMoney.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '商品数量'.tr,
                  value: dataController.businessStatistics?.totalProductNum.toString() ?? '0',
                ),
                DataAllText(
                  label: '优惠折扣'.tr,
                  value: dataController.businessStatistics?.totalDiscountMoney.toString().primaryCurrency ?? '0',
                ),
                if (Get.isRegistered<BaseInfoController>()
                    ? Get.find<BaseInfoController>().isModuleAvailableMember
                    : false)
                  DataAllText(
                    label: '会员折扣'.tr,
                    value: dataController.businessStatistics?.totalUserDiscountMoney.toString().primaryCurrency ?? '0',
                  ),
                DataAllText(
                  label: '退款'.tr,
                  value: dataController.businessStatistics?.totalRefundMoney.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '免单金额'.tr,
                  value: dataController.businessStatistics?.totalFreeOrderPrice.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '实收金额'.tr,
                  value: dataController.businessStatistics?.totalReceivedPrice.toString().primaryCurrency ?? '0',
                ),
                if (dataController.businessStatistics?.percentageList != null &&
                    dataController.businessStatistics?.percentageList.isNotEmpty == true)
                  DataDashedBorder(),
                if (dataController.businessStatistics?.percentageList != null &&
                    dataController.businessStatistics?.percentageList.isNotEmpty == true)
                  for (var item in dataController.businessStatistics?.percentageList ?? []) DataTax(item: item),
                DataDashedBorder(),
                //会员数据
                DataTitle(
                  title: '会员数据'.tr,
                ),
                DataAllText(
                  label: '充值金额'.tr,
                  value: dataController.businessStatistics?.memberData.rechargeAmount.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '赠送金额'.tr,
                  value: dataController.businessStatistics?.memberData.giftMoney.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '赠送积分'.tr,
                  value: dataController.businessStatistics?.memberData.giftPoints.toCleanString ?? '0',
                ),
                DataDashedBorder(),
                DataTitle(
                  title: '未结账数据'.tr,
                ),
                DataAllText(
                  label: '订单数'.tr,
                  value: dataController.businessStatistics?.unclosedTotalOrderNum.toString() ?? '0',
                ),
                DataAllText(
                  label: '金额'.tr,
                  value: dataController.businessStatistics?.unclosedTotalPrice.toString().primaryCurrency ?? '0',
                ),
                DataDashedBorder(),
                DataTitle(
                  title: '合计'.tr,
                ),
                DataAllText(
                  label: '所有订单数'.tr,
                  value: dataController.businessStatistics?.totalOrderNum.toString() ?? '0',
                ),
                DataAllText(
                  label: '桌数'.tr,
                  value: dataController.businessStatistics?.totalTableNum.toString() ?? '0',
                ),
                DataAllText(
                  label: '人数'.tr,
                  value: dataController.businessStatistics?.totalPeopleNum.toString() ?? '0',
                ),
                DataAllText(
                  label: '最小/大订单金额'.tr,
                  value:
                      '${dataController.businessStatistics?.minOrderPrice.toString().primaryCurrency}/${dataController.businessStatistics?.maxOrderPrice.toString().primaryCurrency}',
                ),
                DataAllText(
                  label: '平均订单金额'.tr,
                  value: dataController.businessStatistics?.avgOrderPrice.toString().primaryCurrency ?? '0',
                ),
                SizedBox(height: 8),
                //桌台方式
                DataTitle(
                  title: '桌台方式'.tr,
                ),
                DataAllText(
                  label: '订单数（桌数）'.tr,
                  value: dataController.businessStatistics?.totalTableNum.toString() ?? '0',
                ),
                DataAllText(
                  label: '人数'.tr,
                  value: dataController.businessStatistics?.allTablePeopleNum.toString() ?? '0',
                ),
                DataAllText(
                  label: '最小/大订单金额'.tr,
                  value:
                      '${dataController.businessStatistics?.allTableMinOrderPrice.toString().primaryCurrency}/${dataController.businessStatistics?.allTableMaxOrderPrice.toString().primaryCurrency}',
                ),
                DataAllText(
                  label: '平均订单金额'.tr,
                  value: dataController.businessStatistics?.allTableAvgOrderPrice.toString().primaryCurrency ?? '0',
                ),
                DataAllText(
                  label: '人均'.tr,
                  value: dataController.businessStatistics?.allTablePeopleAvg.toString().primaryCurrency ?? '0',
                ),
                SizedBox(height: 16),
                //点餐方式
                DataTitle(
                  title: '点餐方式'.tr,
                ),
                DataAllText(
                  label: '订单数'.tr,
                  value: dataController.businessStatistics?.allCashierOrderNum.toString() ?? '0',
                ),
                DataAllText(
                  label: '最小/大订单金额'.tr,
                  value:
                      '${dataController.businessStatistics?.allCashierMinOrderPrice.toString().primaryCurrency}/${dataController.businessStatistics?.allCashierMaxOrderPrice.toString().primaryCurrency}',
                ),
                DataAllText(
                  label: '平均订单金额'.tr,
                  value: dataController.businessStatistics?.allCashierAvgOrderPrice.toString().primaryCurrency ?? '0',
                ),
                DataDashedBorder(),
                DataAllTable(
                  titleLeft: '支付方式'.tr,
                  titleCenter: '订单数'.tr,
                  titleRight: '金额'.tr,
                  data: dataController.businessStatistics?.paymentMethodIncomes
                          .map(
                            (e) => {
                              'value': e.name,
                              'num': e.orderNum.toString(),
                              'price': e.amount.toString().primaryCurrency,
                            },
                          )
                          .toList() ??
                      [],
                  // 计算支付方式金额总和
                  totalPayPrice: dataController.businessStatistics?.paymentMethodIncomes
                          .fold(0.0, (sum, item) => sum + (item.amount))
                          .toString()
                          .primaryCurrency ??
                      '0',
                ),
                DataDashedBorder(),
                DataAllTable(
                  titleLeft: '高峰时间'.tr,
                  titleCenter: '订单数'.tr,
                  titleRight: '金额'.tr,
                  data: dataController.businessStatistics?.peakHourList
                          .map(
                            (e) => {
                              'value': e.timePeriod,
                              'num': e.num.toString(),
                              'price': e.amount.toString().primaryCurrency,
                            },
                          )
                          .toList() ??
                      [],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
