import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/common/date_pick.dart';
import 'package:pos/components/common/segmented_button.dart';
import 'package:pos/components/data/components/data_all.dart';
import 'package:pos/components/data/components/data_button.dart';
import 'package:pos/components/data/components/data_pay_type.dart';
import 'package:pos/components/data/components/data_product.dart';
import 'package:pos/components/data/components/data_product_class.dart';
import 'package:pos/controllers/data/data_controller.dart';
// Package imports:
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DataAnalysisView extends StatelessWidget {
  DataAnalysisView({super.key});
  final DataController dataController = Get.find<DataController>();
  @override
  Widget build(BuildContext context) {
    final TextStyle tabStyle = TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w600,
    );
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '营业数据'.tr,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: CustomTheme.secondaryColor,
            ),
          ),
          SizedBox(height: 10),
          Obx(
            () => SegmentedButtonExample(
              data: dataController.dayData,
              selected: {dataController.timeType},
              onSelectionChangedCallback: (newSelection) {
                if (dataController.isLoading) return;
                dataController.timeType = int.tryParse(newSelection.toString()) ?? 0;
                dataController.timeValue = [];
                dataController.queryStartTime = 0;
                dataController.queryEndTime = 0;
                dataController.search();
              },
            ),
          ),
          SizedBox(height: 10),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Obx(
                  () => DatePick(
                    dialogCalendarPickerValue: dataController.timeValue,
                    onDateChanged: (values, dialogCalendarPickerValue) {
                      if (dataController.isLoading) return;
                      dataController.timeValue = dialogCalendarPickerValue;
                      dataController.queryStartTime = values[0];
                      dataController.queryEndTime = values[1];
                      dataController.timeType = -1;
                      dataController.search();
                    },
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TtButton(
                text: '查询'.tr,
                sizeType: SizeButtonType.small,
                buttonType: ActionButtonType.primary,
                onTap: () {
                  dataController.search();
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ClipRRect(
              child: DefaultTabController(
                initialIndex: 0,
                animationDuration: Duration.zero,
                length: 4,
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    TabBar(
                      indicator: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: CustomTheme.primaryColor.shade600,
                          ),
                        ),
                      ),
                      dividerColor: CustomTheme.greyColor.shade200,
                      labelColor: CustomTheme.primaryColor.shade600,
                      unselectedLabelColor: CustomTheme.secondaryColor,
                      labelPadding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      indicatorSize: TabBarIndicatorSize.tab,
                      onTap: (index) {
                        dataController.type = index;
                        if (index != 2) {
                          dataController.categoryType = -1;
                        } else {
                          dataController.categoryType = 1;
                        }
                        dataController.search();
                      },
                      tabs: [
                        Text(
                          '全部'.tr,
                          style: tabStyle,
                        ),
                        Text(
                          '按支付方式'.tr,
                          style: tabStyle,
                        ),
                        Text(
                          '按商品分类'.tr,
                          style: tabStyle,
                        ),
                        Text(
                          '按商品'.tr,
                          style: tabStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          DataAll(),
                          DataPayType(),
                          DataProductClass(),
                          DataProduct(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          DataButton(),
        ],
      ),
    );
  }
}
