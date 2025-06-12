// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/data/components/data_dashe_border.dart';
import 'package:pos/components/data/components/data_wrap.dart';
import 'package:pos/controllers/data/data_controller.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataPayType extends StatelessWidget {
  DataPayType({super.key});
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
          child: Obx(() {
            return Column(
              children: [
                Row(
                  children: [
                    Text(
                      '实收金额'.tr,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: CustomTheme.secondaryColor,
                      ),
                    ),
                    Text(
                      dataController.paymentStatistics?.totalReceivedPrice.toString().primaryCurrency ??
                          '0'.primaryCurrency,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: CustomTheme.secondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                DataDashedBorder(),
                DataWrap(
                  dayData: dataController.paymentStatistics?.paymentMethodIncomes
                          .map(
                            (e) => {
                              'label': e.name,
                              'value': e.amount.toString().primaryCurrency,
                            },
                          )
                          .toList() ??
                      [],
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
