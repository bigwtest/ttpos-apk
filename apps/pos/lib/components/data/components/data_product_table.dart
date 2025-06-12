// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/data/components/data_table_text.dart';
import 'package:pos/controllers/data/data_controller.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataProductTable extends StatelessWidget {
  DataProductTable({super.key});

  final DataController dataController = Get.find<DataController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: CustomTheme.greyColor.shade300,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Obx(
        () => Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: CustomTheme.greyColor.shade100,
              ),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 5,
                    child: DataTableText(
                      text: '商品名称'.tr,
                      textAlign: 'left',
                      type: 'th',
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: DataTableText(
                      text: '销量'.tr,
                      textAlign: 'right',
                      type: 'th',
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: DataTableText(
                      text: '单价'.tr,
                      textAlign: 'right',
                      type: 'th',
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: DataTableText(
                      text: '合计'.tr,
                      textAlign: 'right',
                      type: 'th',
                      isBold: false,
                    ),
                  ),
                ],
              ),
            ),
            if (dataController.productStatistics?.products.isEmpty ?? true)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 12.0,
                ),
                child: Text(
                  '暂无数据'.tr,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: CustomTheme.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            if (dataController.productStatistics?.products.isNotEmpty ?? false)
              for (var dataIndex = 0; dataIndex < dataController.productStatistics!.products.length; dataIndex++)
                Container(
                  decoration: BoxDecoration(
                    color: dataIndex % 2 == 0 ? Colors.white : CustomTheme.greyColor.shade200,
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: CustomTheme.greyColor.shade300,
                      ),
                    ),
                  ),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 5,
                        child: DataTableText(
                          text: dataController.productStatistics!.products[dataIndex].name,
                          textAlign: 'left',
                          type: 'td',
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: DataTableText(
                          text: dataController.productStatistics!.products[dataIndex].salesNum.toString(),
                          textAlign: 'right',
                          type: 'td',
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: DataTableText(
                          text: dataController.productStatistics!.products[dataIndex].price.toString().primaryCurrency,
                          textAlign: 'right',
                          type: 'td',
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: DataTableText(
                          text:
                              dataController.productStatistics!.products[dataIndex].subtotal.toString().primaryCurrency,
                          textAlign: 'right',
                          type: 'td',
                          isBold: false,
                        ),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
