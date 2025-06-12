// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:pos/components/common/number_pagination.dart';
import 'package:pos/components/common/segmented_button.dart';
import 'package:pos/components/common/table.dart';
import 'package:pos/components/common/table_td_text.dart';
import 'package:pos/components/order/components/date_pick.dart';
import 'package:pos/components/order/components/order_button.dart';
import 'package:pos/controllers/order_list/order_for_meals_controller.dart';
import 'package:pos/model/response/order_list/resp_bill_lists_order.dart';
import 'package:pos/model/response/order_list/table_list.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/components/tt_select/tt_select.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class OrderForMeals extends StatelessWidget {
  OrderForMeals({
    super.key,
  });
  final _formKey = GlobalKey<FormBuilderState>();

  final OrderForMealsController orderForMealsController = Get.find<OrderForMealsController>();

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
                    data: orderForMealsController.statusData,
                    selected: {orderForMealsController.status},
                    onSelectionChangedCallback: (newSelection) {
                      orderForMealsController.status = newSelection;
                      orderForMealsController.search();
                    },
                  ),
                ),
                Obx(
                  () => SegmentedButtonExample(
                    data: orderForMealsController.dayData,
                    selected: {orderForMealsController.dateType},
                    minWidth: 68.0,
                    onSelectionChangedCallback: (newSelection) {
                      orderForMealsController.dateType = newSelection;
                      orderForMealsController.queryStartTime = 0;
                      orderForMealsController.queryEndTime = 0;
                      orderForMealsController.timeValue = [];
                      orderForMealsController.search();
                    },
                  ),
                ),
                Obx(
                  () => DatePick(
                    initialValue: orderForMealsController.timeModeValue,
                    initialDialogCalendarPickerValue: orderForMealsController.timeValue,
                    selectList: [
                      {
                        'value': 0,
                        'label': "开台时间".tr,
                      },
                      {
                        'value': 1,
                        'label': '支付时间'.tr,
                      },
                    ],
                    onDateChanged: (newValue, dialogCalendarPickerValue) {
                      orderForMealsController.queryStartTime = newValue[0];
                      orderForMealsController.queryEndTime = newValue[1];
                      orderForMealsController.timeValue = dialogCalendarPickerValue;
                      orderForMealsController.dateType = -2;
                      orderForMealsController.search();
                    },
                    onChanged: (newValue) {
                      orderForMealsController.timeModeValue = newValue;
                      orderForMealsController.timeModeChanged();
                    },
                  ),
                ),
                Obx(
                  () => TtSelect(
                    width: 214.0.scaleWidth,
                    height: 36.0.scaleHeight,
                    hintText: '所有类型'.tr,
                    value: orderForMealsController.billType,
                    clearIcon: true,
                    selectList: [
                      {
                        'value': 1,
                        'label': '点餐订单'.tr,
                      },
                      {
                        'value': 0,
                        'label': '桌台订单'.tr,
                      }
                    ],
                    onChanged: (val) {
                      if (val != null) {
                        orderForMealsController.billType = val['value'];
                      } else {
                        orderForMealsController.billType = -1;
                      }
                      orderForMealsController.search();
                    },
                  ),
                ),
                TtInput(
                  width: 214.0.scaleWidth,
                  height: 36.0.scaleHeight,
                  hintText: '订单号'.tr,
                  onChanged: (val) {
                    orderForMealsController.orderNo = val;
                  },
                ),
                TtButton(
                  text: '查询'.tr,
                  buttonType: ActionButtonType.primary,
                  sizeType: SizeButtonType.small,
                  onTap: () {
                    orderForMealsController.search();
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Obx(
            () => ExpandableTable(
              isLoading: orderForMealsController.isLoading,
              data: orderForMealsController.tableList,
              th: [
                '订单类型'.tr,
                '桌号/序号'.tr,
                '订单号'.tr,
                '状态'.tr,
                '支付时间'.tr,
                '订单金额'.tr,
                '实付金额'.tr,
                '支付方式'.tr,
                '',
              ],
              buildRowCells: (
                hasChildren,
                hasChildrenList,
                dataItem,
                index,
                expandedRows,
                toggleExpanded,
              ) {
                final item = dataItem as TableList;
                return [
                  DataCell(
                    Row(
                      children: [
                        if (hasChildren)
                          GestureDetector(
                            onTap: () {
                              toggleExpanded(index);
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: Icon(
                                expandedRows[index] == true ? Icons.expand_less : Icons.expand_more,
                                size: 18,
                              ),
                            ),
                          ),
                        if (!hasChildren && hasChildrenList)
                          const SizedBox(
                            width: 16,
                            height: 16,
                          ),
                        TableTdText(
                          text: item.billType == 0 ? '桌台订单'.tr : '点餐订单'.tr,
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.serialNo,
                    ),
                  ),
                  DataCell(TableTdText(text: item.orderNo.toString())),
                  //订单状态 订单状态, 0-待付款、1-已完成、2-已取消
                  DataCell(
                    TableTdText(
                      text: _getOrderStatus(item.status),
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.finishTime != 0 ? item.finishTime.tz : '-',
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.orderAmount.toSafetyString().primaryCurrency,
                      subText: item.orderAmount.toSafetyString().secondaryCurrency,
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.status != 0 || listStatus(item.childrenList)
                          ? item.childrenList.isNotEmpty
                              ? listMoney(item.childrenList).primaryCurrency
                              : item.paymentAmount.toSafetyString().primaryCurrency
                          : '-',
                      subText: item.status != 0 || listStatus(item.childrenList)
                          ? item.childrenList.isNotEmpty
                              ? listMoney(item.childrenList).secondaryCurrency
                              : item.paymentAmount.toSafetyString().secondaryCurrency
                          : '',
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.status != 0 || listStatus(item.childrenList) ? item.payTypeName : '-',
                    ),
                  ),
                  DataCell(
                    OrderButton(
                      isNewOrder: orderForMealsController.isNewOrder,
                      isMain: true,
                      extra: item.extra,
                      saleBillUuid: item.saleBillUuid,
                      saleOrderUuid: item.saleOrderUuid,
                    ),
                  ),
                ];
              },
              buildExpandedRowCells: (
                hasChildren,
                hasChildrenList,
                dataItem,
                index,
              ) {
                final item = dataItem as RespBillListsOrder;
                return [
                  const DataCell(Text('')),
                  DataCell(
                    TableTdText(
                      text: item.serialNo,
                    ),
                  ),
                  DataCell(TableTdText(text: item.orderNo.toString())),
                  DataCell(
                    TableTdText(
                      text: _getOrderStatus(item.status),
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.finishTime != 0 ? item.finishTime.tz : '-',
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.orderAmount.toSafetyString().primaryCurrency,
                      subText: item.orderAmount.toSafetyString().secondaryCurrency,
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.status != 0 ? item.paymentAmount.toSafetyString().primaryCurrency : '-',
                      subText: item.status != 0 ? item.paymentAmount.toSafetyString().secondaryCurrency : '',
                    ),
                  ),
                  DataCell(
                    TableTdText(
                      text: item.status != 0 ? item.payTypeName : '-',
                    ),
                  ),
                  DataCell(
                    OrderButton(
                      isNewOrder: orderForMealsController.isNewOrder,
                      extra: item.extra,
                      saleBillUuid: item.saleBillUuid,
                      saleOrderUuid: item.saleOrderUuid,
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
            total: orderForMealsController.total,
            page: orderForMealsController.pageNo,
            lastPage: orderForMealsController.lastPage,
            onPageChanged: (page) {
              if (orderForMealsController.isLoading) return;
              orderForMealsController.pageNo = page;
              orderForMealsController.getOrderForMealsListAPI();
            },
          ),
        ),
      ],
    );
  }

  String _getOrderStatus(int status) {
    switch (status) {
      case 0:
        return '待付款'.tr;
      case 1:
        return '已完成'.tr;
      case 2:
        return '已取消'.tr;
      default:
        return '';
    }
  }

  bool listStatus(List<RespBillListsOrder> list) {
    return list.any((element) => element.status != 0);
  }

  String listMoney(List<RespBillListsOrder> list) {
    double money = 0;
    for (var e in list) {
      if (e.status != 0) {
        money += e.paymentAmount.toSafetyDouble();
      }
    }
    return money.toString();
  }
}
