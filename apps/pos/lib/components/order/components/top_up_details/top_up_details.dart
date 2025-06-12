// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/order/components/darwer/drawer_log.dart';
import 'package:pos/components/order/components/darwer/drawer_sub_title.dart';
import 'package:pos/components/order/components/darwer/drawer_title.dart';
// Project imports:
import 'package:pos/components/order/components/top_up_details/top_up_details_action_bar.dart';
import 'package:pos/components/order/components/top_up_details/top_up_details_info.dart';
import 'package:pos/components/order/components/top_up_details/top_up_table.dart';
import 'package:pos/controllers/top_up_list/top_up_details_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TopUpDetails extends StatelessWidget {
  const TopUpDetails({super.key});
  // 获取控制器实例 - 复杂点，但生命力更强
  TopUpDetailsController get details {
    if (Get.isRegistered<TopUpDetailsController>()) {
      return Get.find<TopUpDetailsController>();
    }
    return Get.put(TopUpDetailsController());
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        DrawerTitle(title: '订单详情'.tr),
        Expanded(
          child: Obx(
            () {
              if (details.isLoading) {
                return Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              }
              return ListView(
                children: [
                  DrawerSubTitle(title: '基本信息'.tr),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: CustomTheme.greyColor.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Obx(
                        () => TopUpDetailsInfo(details: details.topUpDetails),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  DrawerSubTitle(title: '订单信息'.tr),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Obx(
                      () => TopUpTable(details: details.topUpDetails),
                    ),
                  ),
                  SizedBox(height: 24),
                  DrawerSubTitle(title: '操作记录'.tr),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: CustomTheme.greyColor.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Obx(
                        () => OrderDetailsLog(
                          operationLogList: details.operationLog,
                          onTap: (returnAmountUuid, returnOrderUuid, bankCode, accountName, accountNo) {},
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Obx(
          () => DrawerActionBar(
            extra: details.topUpDetails.extra,
            uuid: details.topUpDetails.uuid,
          ),
        ),
      ],
    );
  }
}
