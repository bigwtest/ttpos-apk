// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/common/number_pagination.dart';
import 'package:pos/components/common/segmented_button.dart';
import 'package:pos/components/common/table.dart';
import 'package:pos/components/common/table_td_text.dart';
import 'package:pos/components/order/components/date_pick.dart';
import 'package:pos/components/order/components/top_up_button.dart';
import 'package:pos/controllers/top_up_list/top_up_order_controller.dart';
import 'package:pos/model/response/top_up_list/resp_recharge_order_item.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

String selectedDayValue = '0';

class TopUpOrder extends StatelessWidget {
  TopUpOrder({
    super.key,
  });
  final _formKey = GlobalKey<FormBuilderState>();

  final TopUpOrderController topUpOrderController = Get.find<TopUpOrderController>();

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: double.infinity,
          child: FormBuilder(
            key: _formKey,
            child: Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Obx(
                  () => SegmentedButtonExample(
                    data: topUpOrderController.segmentData,
                    selected: {topUpOrderController.status},
                    onSelectionChangedCallback: (newSelection) {
                      topUpOrderController.status = int.tryParse(newSelection.toString()) ?? 0;
                      topUpOrderController.search();
                    },
                  ),
                ),
                Obx(
                  () => SegmentedButtonExample(
                    data: topUpOrderController.dayData,
                    minWidth: 68.0,
                    selected: {topUpOrderController.dateType},
                    onSelectionChangedCallback: (newSelection) {
                      topUpOrderController.dateType = int.tryParse(newSelection.toString()) ?? 0;
                      topUpOrderController.queryStartTime = 0;
                      topUpOrderController.queryEndTime = 0;
                      topUpOrderController.timeValue = [];
                      topUpOrderController.search();
                    },
                  ),
                ),
                Obx(
                  () => DatePick(
                    initialValue: topUpOrderController.timeModeValue,
                    initialDialogCalendarPickerValue: topUpOrderController.timeValue,
                    selectList: [
                      {
                        'value': 0,
                        'label': "添加时间".tr,
                      },
                      {
                        'value': 1,
                        'label': '支付时间'.tr,
                      },
                    ],
                    onDateChanged: (newValue, dialogCalendarPickerValue) {
                      topUpOrderController.queryStartTime = newValue[0];
                      topUpOrderController.queryEndTime = newValue[1];
                      topUpOrderController.timeValue = dialogCalendarPickerValue;
                      topUpOrderController.dateType = -2;
                      topUpOrderController.search();
                    },
                    onChanged: (newValue) {
                      topUpOrderController.timeModeValue = newValue;
                      topUpOrderController.timeModeChanged();
                    },
                  ),
                ),
                TtInput(
                  width: 214.0.scaleWidth,
                  height: 36.0.scaleHeight,
                  hintText: '订单号'.tr,
                  onChanged: (val) {
                    topUpOrderController.orderNo = val;
                  },
                ),
                TtButton(
                  text: '查询'.tr,
                  buttonType: ActionButtonType.primary,
                  sizeType: SizeButtonType.small,
                  onTap: () {
                    topUpOrderController.search();
                  },
                ),
              ],
            ),
          ),
        ),
        //
        const SizedBox(height: 16),
        Expanded(
          child: Obx(
            () => ExpandableTable(
              isLoading: topUpOrderController.isLoading,
              data: topUpOrderController.tableData,
              th: [
                '订单类型'.tr,
                '订单号'.tr,
                '状态'.tr,
                '支付时间'.tr,
                '订单金额'.tr,
                '实付金额'.tr,
                '支付方式'.tr,
                ''.tr,
              ],
              buildRowCells: (
                hasChildren,
                hasChildrenList,
                dataItem,
                index,
                expandedRows,
                toggleExpanded,
              ) {
                final item = dataItem as RespRechargeOrderItem;
                return [
                  DataCell(TableTdText(text: '充值订单'.tr)),
                  DataCell(TableTdText(text: item.orderNo)),
                  DataCell(
                    TableTdText(
                      text: item.status == 0
                          ? '待付款'.tr
                          : item.status == 1
                              ? '已完成'.tr
                              : '已取消'.tr,
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.paymentTime != 0 ? item.paymentTime.tz : '-',
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.rechargeAmount.toSafetyString().primaryCurrency,
                      subText: item.rechargeAmount.toSafetyString().secondaryCurrency,
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.amount.toSafetyString().primaryCurrency,
                      subText: item.amount.toSafetyString().secondaryCurrency,
                    ),
                  ),
                  DataCell(
                    TableTdText(text: item.status == 1 ? item.paymentMethods.join(',') : '-'),
                  ),
                  DataCell(
                    TopUpButton(
                      item: item,
                    ),
                  ),
                ];
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
        Obx(
          () => NumberPagination(
            total: topUpOrderController.total,
            page: topUpOrderController.pageNo,
            lastPage: topUpOrderController.lastPage,
            onPageChanged: (page) {
              if (topUpOrderController.isLoading) return;
              topUpOrderController.pageNo = page;
              topUpOrderController.getTopUpList();
            },
          ),
        ),
      ],
    );
  }
}
