// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_ui/components/desks/controllers/open.dart';
import 'package:ttpos_ui/components/desks/views/open/buffet/action/list.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskOpenDialogContentBuffetActionBoard extends StatelessWidget {
  final String tag;

  const DeskOpenDialogContentBuffetActionBoard({
    super.key,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeskOpenController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Obx(() {
          return GestureDetector(
            // 点击空白区域取消顾客类型选中状态
            onTap: () {
              if (controller.selectedCustomerTypeUuid != null) {
                controller.onChangeSelectedCustomerTypeUuid(null);
              }
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10.0,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: CustomTheme.greyColor.shade300,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4.0,
                      children: controller.selectedBuffets
                          .map(
                            (e) => Text(
                              e.localeName.translate,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: CustomTheme.secondaryColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  controller.selectedBuffets.isEmpty
                      ? SizedBox(
                          height: 110,
                          child: Center(
                            child: Text(
                              '暂无可选顾客类型'.tr,
                              style: TextStyle(
                                color: CustomTheme.greyColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      : Column(
                          spacing: 4.0,
                          children: [
                            DeskOpenDialogContentBuffetActionBoardList(tag: tag),
                            Row(
                              children: [
                                Text(
                                  '共'.tr,
                                  style: TextStyle(
                                    color: CustomTheme.secondaryColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                                  child: Text(
                                    '${controller.totalCustomerCount}',
                                    style: TextStyle(
                                      color: CustomTheme.primaryColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Text(
                                  '人'.tr,
                                  style: TextStyle(
                                    color: CustomTheme.secondaryColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
