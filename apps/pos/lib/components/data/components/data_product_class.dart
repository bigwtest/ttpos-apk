// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/data/components/data_class_wrap.dart';
// Project imports:
import 'package:pos/components/data/components/data_dashe_border.dart';
import 'package:pos/components/data/components/data_product_class_table.dart';
import 'package:pos/controllers/data/data_controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataProductClass extends StatelessWidget {
  DataProductClass({super.key});
  final DataController dataController = Get.find<DataController>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          width: double.infinity,
          child: Obx(
            () => Column(
              children: [
                Row(
                  spacing: 1,
                  children: [
                    TtButton(
                      text: '按一级分类'.tr,
                      sizeType: SizeButtonType.small,
                      buttonType:
                          dataController.categoryType == 1 ? ActionButtonType.primary : ActionButtonType.outline,
                      onTap: () {
                        dataController.categoryType = 1;
                        dataController.search();
                      },
                    ),
                    SizedBox(width: 10),
                    TtButton(
                      text: '按二级分类'.tr,
                      sizeType: SizeButtonType.small,
                      buttonType:
                          dataController.categoryType == 2 ? ActionButtonType.primary : ActionButtonType.outline,
                      onTap: () {
                        dataController.categoryType = 2;
                        dataController.search();
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                DataProductClassTable(data: dataController.productCategoryStatistics?.categoryList ?? []),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: DataDashedBorder()),
                      SizedBox(width: 10),
                      Text('其它统计'.tr),
                      SizedBox(width: 10),
                      Expanded(child: DataDashedBorder()),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: CustomTheme.greyColor.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: DataClassWrap(
                    salesNum: dataController.productCategoryStatistics?.salesNum,
                    totalReceivedPrice: dataController.productCategoryStatistics?.totalReceivedPrice,
                    totalRefundMoney: dataController.productCategoryStatistics?.totalRefundMoney,
                    dayData: dataController.productCategoryStatistics?.paymentMethodIncomes
                        .map(
                          (e) => {
                            'label': e.name,
                            'value': e.amount.toString().primaryCurrency,
                          },
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
