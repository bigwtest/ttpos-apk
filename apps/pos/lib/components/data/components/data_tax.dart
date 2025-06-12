// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/data/components/data_all_text.dart';
import 'package:pos/components/data/components/data_title.dart';
import 'package:pos/model/response/data/resp_business_statistics.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataTax extends StatelessWidget {
  final BusinessDataRespPercentage? item;
  const DataTax({super.key, this.item});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        DataTitle(
          title: 'VAT(${item?.taxRate.toCleanString}%)',
        ),
        DataAllText(
          label: '合计'.tr,
          value: item?.totalPrice.toString().primaryCurrency ?? '0',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '(其中VAT'.tr,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: CustomTheme.secondaryColor.shade200,
              ),
            ),
            Text(
              item?.consumptionTax.toString().primaryCurrency ?? '0',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                color: CustomTheme.secondaryColor,
              ),
            ),
            Text(
              ')',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: CustomTheme.secondaryColor.shade200,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
