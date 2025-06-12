// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/data/components/data_table_text.dart';
import 'package:pos/model/response/data/resp_product_category_statistics.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataProductClassTable extends StatelessWidget {
  const DataProductClassTable({super.key, required this.data});

  final List<BusinessDataRespCategory> data;

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
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: CustomTheme.greyColor.shade100,
            ),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 4,
                  child: DataTableText(
                    text: '分类名称'.tr,
                    textAlign: 'left',
                    type: 'th',
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: DataTableText(
                    text: '销售量'.tr,
                    textAlign: 'right',
                    type: 'th',
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: DataTableText(
                    text: '销售额'.tr,
                    textAlign: 'right',
                    type: 'th',
                    isBold: false,
                  ),
                ),
              ],
            ),
          ),
          if (data.isEmpty)
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
          if (data.isNotEmpty)
            for (var dataIndex = 0; dataIndex < data.length; dataIndex++)
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
                      flex: 4,
                      child: DataTableText(
                        text: data[dataIndex].name,
                        textAlign: 'left',
                        type: 'td',
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: DataTableText(
                        text: data[dataIndex].salesNum.toString(),
                        textAlign: 'right',
                        type: 'td',
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: DataTableText(
                        text: data[dataIndex].prices.toString().primaryCurrency,
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
    );
  }
}
