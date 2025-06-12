// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/common/date_pick.dart';
import 'package:pos/components/common/number_pagination.dart';
import 'package:pos/components/common/table.dart';
import 'package:pos/components/common/table_td_text.dart';
import 'package:pos/controllers/print/print_list_controller.dart';
import 'package:pos/model/response/print_list/printer_list.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_select/tt_select.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';

class PrintIndex extends StatelessWidget {
  PrintIndex({
    super.key,
  });
  final _formKey = GlobalKey<FormBuilderState>();
  final PrintListController controller = Get.find<PrintListController>();

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
                  () => DatePick(
                    dialogCalendarPickerValue: controller.timeValue,
                    onDateChanged: (values, dialogCalendarPickerValue) {
                      controller.timeValue = dialogCalendarPickerValue;
                      controller.queryStartTime = values[0];
                      controller.queryEndTime = values[1];
                    },
                  ),
                ),
                Obx(
                  () => TtSelect(
                    width: 235.0,
                    height: 36.0.scaleHeight,
                    hintText: '状态'.tr,
                    selectList: controller.statusList,
                    value: controller.status,
                    clearIcon: true,
                    onChanged: (val) {
                      if (val != null) {
                        controller.status = val['value'];
                      } else {
                        controller.status = -1;
                      }
                    },
                  ),
                ),
                Obx(
                  () => TtSelect(
                    width: 235.0,
                    height: 36.0.scaleHeight,
                    hintText: '打印机'.tr,
                    clearIcon: true,
                    selectList:
                        controller.printerBase?.printerList.map((e) => {'value': e.uuid, 'label': e.name}).toList() ??
                            [],
                    value: controller.printerUuid,
                    onChanged: (val) {
                      if (val != null) {
                        controller.printerUuid = val['value'];
                      } else {
                        controller.printerUuid = 0;
                      }
                    },
                  ),
                ),
                Obx(
                  () => TtSelect(
                    width: 235.0,
                    height: 36.0.scaleHeight,
                    hintText: '打印类型'.tr,
                    clearIcon: true,
                    selectList: controller.printerBase?.printerTypeList
                            .map((e) => {'value': e.uuid, 'label': e.name})
                            .toList() ??
                        [],
                    value: controller.dataType,
                    onChanged: (val) {
                      if (val != null) {
                        controller.dataType = val['value'];
                      } else {
                        controller.dataType = -1;
                      }
                    },
                  ),
                ),
                TtButton(
                  text: '查询'.tr,
                  sizeType: SizeButtonType.small,
                  buttonType: ActionButtonType.primary,
                  onTap: () {
                    controller.search();
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Obx(
          () => Expanded(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: ExpandableTable(
                isLoading: controller.isLoading,
                data: controller.printList?.list ?? [],
                th: [
                  '桌号/序号'.tr,
                  '订单号'.tr,
                  '打印机'.tr,
                  '商品打印规则'.tr,
                  '打印类型'.tr,
                  '创建时间'.tr,
                  '状态'.tr,
                  '最后打印时间'.tr,
                  '失败原因'.tr,
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
                  final item = dataItem as RespPrinterLogData;
                  return [
                    DataCell(
                      Row(
                        children: [
                          TableTdText(text: item.serialNo),
                        ],
                      ),
                    ),
                    DataCell(TableTdText(text: item.orderNo)),
                    DataCell(TableTdText(text: item.printerName)),
                    DataCell(TableTdText(text: item.ruleName)),
                    DataCell(TableTdText(text: item.dataTypeName)),
                    DataCell(TableTdText(text: item.createTime.tz)),
                    DataCell(TableTdText(text: item.statusText)),
                    DataCell(TableTdText(text: item.printerTime.tz)),
                    DataCell(TableTdText(text: item.reason)),
                    DataCell(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TtButton(
                            text: '打印'.tr,
                            sizeType: SizeButtonType.small,
                            buttonType: ActionButtonType.primary,
                            onTap: () async {
                              final result = await controller.handlePrint(uuid: item.uuid);
                              if (result?.data == "") return;
                              PrintController.sendPrint(result!);
                            },
                          ),
                        ],
                      ),
                    ),
                  ];
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Obx(
          () => NumberPagination(
            total: controller.total,
            page: controller.pageNo,
            lastPage: controller.lastPage,
            onPageChanged: (page) {
              if (controller.isLoading) return;
              controller.pageNo = page;
              controller.getPrintList();
            },
          ),
        ),
      ],
    );
  }
}
