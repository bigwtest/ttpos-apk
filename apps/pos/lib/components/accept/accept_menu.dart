// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/accept/components/accept_item.dart';
import 'package:pos/components/common/category_column.dart';
import 'package:pos/controllers/accept/accept_controller.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptMenu extends StatelessWidget {
  const AcceptMenu({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AcceptController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: IgnorePointer(
            ignoring: controller.isListLoading || controller.isPageLoading || controller.isDetailLoading,
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 12.0,
                      children: [
                        Expanded(
                          child: TabBar(
                            controller: controller.tabController,
                            indicator: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 2.0,
                                  color: CustomTheme.primaryColor,
                                ),
                              ),
                            ),
                            dividerColor: CustomTheme.greyColor.shade200,
                            labelColor: CustomTheme.primaryColor,
                            unselectedLabelColor: CustomTheme.secondaryColor,
                            tabAlignment: TabAlignment.start,
                            labelPadding: EdgeInsets.only(bottom: 6.0.scaleHeight),
                            isScrollable: true,
                            tabs: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(36.0, 0, 36.0, 0),
                                child: Obx(
                                  () => Text(
                                    '${'待接单'.tr} ${controller.notice > 0 ? '(${controller.notice})' : ''}',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.0),
                                child: Obx(
                                  () => Text(
                                    '${'已处理'.tr} ${controller.done > 0 ? '(${controller.done})' : ''}',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TtButton(
                          text: '接单设置'.tr,
                          sizeType: SizeButtonType.small,
                          height: 32.0.scaleHeight,
                          textWidget: Row(
                            children: [
                              Icon(
                                Iconfont.setting,
                                size: 12.0.scaleWidth,
                                color: CustomTheme.secondaryColor,
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '接单设置'.tr,
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          buttonType: ActionButtonType.outline,
                          onTap: () {
                            controller.acceptSettingDialog();
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Obx(
                      () => CategoryColumn(
                        selectedIndex: controller.areaSelectedIndex,
                        dataList: controller.categoryList,
                        onTap: controller.onAreaSelected,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 9),
                Expanded(
                  child: Obx(() {
                    if (controller.acceptList.isEmpty) {
                      return Center(child: EmptyDataView());
                    }
                    return ListView.separated(
                      itemCount: controller.acceptList.length + 1,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 8.0,
                      ),
                      itemBuilder: (_, index) {
                        final items = controller.acceptList;
                        if (index == items.length) {
                          // 最后一项显示加载状态或无数据提示
                          return Obx(
                            () => Container(
                              height: 12.0,
                              alignment: Alignment.center,
                              child: controller.hasMore
                                  ? SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: const CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : null,
                            ),
                          );
                        }

                        // 当滑动到最后一项时，触发加载更多
                        if (index == items.length - 1 && controller.hasMore) {
                          controller.loadMore();
                        }
                        final data = items[index];
                        return Obx(
                          () => AcceptItem(
                            data: data,
                            isSelected: index == controller.orderSelectedIndex,
                            onTap: (acceptItem) {
                              controller.onOrderSelected(
                                acceptItem: acceptItem,
                                index: index,
                              );
                            },
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
