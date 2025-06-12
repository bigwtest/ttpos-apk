// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/accept/components/accept_details_button.dart';
import 'package:pos/components/accept/components/accept_details_info.dart';
import 'package:pos/components/accept/components/accept_details_log.dart';
import 'package:pos/components/accept/components/accept_details_table.dart';
import 'package:pos/controllers/accept/accept_controller.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptDetails extends StatelessWidget {
  const AcceptDetails({super.key, required this.tag});
  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AcceptController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Obx(
            () {
              if (controller.currentAcceptDetail == null) return EmptyDataView();
              return Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                controller.currentAcceptDetailInfo?.orderTime ?? '',
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Obx(
                              () {
                                if (controller.newProducts.isEmpty) {
                                  return const SizedBox.shrink();
                                }
                                return AcceptDetailsTable(
                                  title: controller.status == 0
                                      ? '新增'.tr
                                      : controller.currentAcceptDetailInfo?.status == 2
                                          ? '已下单'.tr
                                          : '已拒单'.tr,
                                  products: controller.newProducts,
                                );
                              },
                            ),
                            Obx(() {
                              if (controller.takeProducts.isEmpty) {
                                return const SizedBox.shrink();
                              }
                              return AcceptDetailsTable(
                                title: '已下单'.tr,
                                products: controller.takeProducts,
                              );
                            }),
                            Obx(() {
                              final data = controller.currentAcceptDetailInfo;
                              return AcceptDetailsInfo(
                                deskNo: data?.deskNo,
                                operatorName: data?.operatorName,
                                handleTime: data?.handleTime,
                                orderAmount: data?.orderAmount,
                                status: data?.status,
                              );
                            }),
                            Obx(() {
                              if (controller.logs.isEmpty) {
                                return const SizedBox.shrink();
                              }
                              return AcceptDetailsLog(
                                logs: controller.logs,
                              );
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Obx(() {
                    if (controller.currentAcceptDetailInfo?.status != 1) {
                      return const SizedBox.shrink();
                    }
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 16),
                        AcceptDetailsButton(
                          isButtonDisabled: controller.isButtonDisabled,
                          orderRejection: () =>
                              controller.onOrderRejection(controller.currentAcceptDetailInfo?.h5OrderUuid ?? 0),
                          goToDesk: () => controller.onEnterDesk(
                            controller.currentAcceptDetailInfo?.h5OrderUuid ?? 0,
                            controller.currentAcceptDetailInfo?.saleBillUuid ?? 0,
                          ),
                          takeOrders: () =>
                              controller.onTakeOrders(controller.currentAcceptDetailInfo?.h5OrderUuid ?? 0),
                        ),
                      ],
                    );
                  }),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
