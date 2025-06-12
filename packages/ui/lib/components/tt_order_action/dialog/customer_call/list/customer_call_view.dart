import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/customer_call/response/abnormal_print_item.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call_list.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_empty/tt_empty.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/customer_call/list/customer_call_bar_item.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/customer_call/list/customer_call_controller.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/customer_call/list/customer_call_item.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CustomerCallView extends StatelessWidget {
  final bool isShowPrint; // 是否显示打印列表
  final ResponseUnprocessedCall? initCount; // 初始化统计
  final Future<BaseList<ResponseUnprocessedCallList>?> Function(BasePageQuery data)? onUnprocessedCallList; // 获取呼叫列表
  final Future<bool> Function(int uuid)? onUnprocessedCallFinish; // 呼叫列表-已处理 => 接口
  final Future<BaseList<AbnormalPrintItem>?> Function(BasePageQuery data)? onPrintList; // 打印列表
  final Future<bool> Function(int uuid)? onReprint; // 重新打印
  final Future<bool> Function(int uuid)? onDeletePrint; // 删除打印

  const CustomerCallView({
    super.key,
    this.isShowPrint = false,
    this.initCount,
    this.onUnprocessedCallList,
    this.onUnprocessedCallFinish,
    this.onPrintList,
    this.onReprint,
    this.onDeletePrint,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CustomerCallController(
        initCount: initCount,
        fetchUnprocessedCallList: onUnprocessedCallList,
        fetchUnprocessedCallFinish: onUnprocessedCallFinish,
        fetchPrintList: onPrintList,
        fetchReprint: onReprint,
        fetchDeletePrint: onDeletePrint,
      ),
      dispose: (_) => Get.delete<CustomerCallController>(),
      builder: (controller) => Container(
        width: 440.0.scaleWidth,
        padding: EdgeInsets.all(
          24.0.scalePadding,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              isShowPrint
                  ? DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child: TabBar(
                        indicator: BoxDecoration(), // 移除底部指示线
                        dividerColor: Colors.transparent,
                        labelColor: CustomTheme.primaryColor,
                        unselectedLabelColor: CustomTheme.secondaryColor,
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        tabAlignment: TabAlignment.start,
                        labelPadding: EdgeInsets.symmetric(
                          horizontal: 4.0.scalePadding,
                          vertical: 0,
                        ),
                        isScrollable: true,
                        onTap: controller.handleChangeTab,
                        tabs: [
                          Obx(
                            () => CustomerCallBarItem(
                              count: controller.unprocessedCallCount,
                              title: '顾客呼叫'.tr,
                              margin: EdgeInsets.only(right: 8.0),
                            ),
                          ),
                          Obx(
                            () => CustomerCallBarItem(
                              count: controller.printCount,
                              title: '异常打印'.tr,
                              margin: EdgeInsets.only(left: 8.0),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Obx(
                      () => CustomerCallBarItem(
                        count: controller.unprocessedCallCount,
                        title: '顾客呼叫'.tr,
                        fontSize: 16.0,
                        color: CustomTheme.secondaryColor,
                      ),
                    ),
              SizedBox(
                height: 16.0,
              ),
              Obx(
                () => SizedBox(
                  height: 160.0.scaleHeight,
                  child: controller.callList.isNotEmpty
                      ? ListView.separated(
                          itemCount: controller.callList.length + 1, // 增加1用于显示加载状态
                          separatorBuilder: (context, index) => SizedBox(
                            height: 8.0,
                          ),
                          itemBuilder: (_, int index) {
                            // 最后一项显示加载状态或无数据提示
                            if (index == controller.callList.length) {
                              return Container(
                                height: 24.0,
                                alignment: Alignment.center,
                                child: controller.hasMore
                                    ? SizedBox(
                                        width: 20.0,
                                        height: 20.0,
                                        child: CircularProgressIndicator(),
                                      )
                                    : Text(
                                        '没有更多数据了'.tr,
                                        style: TextStyle(
                                          color: CustomTheme.greyColor,
                                          fontSize: 12.0,
                                        ),
                                      ),
                              );
                            }
                            // 当滑动到最后一项时，触发加载更多
                            if (index == controller.callList.length - 1 && controller.hasMore) {
                              controller.loadNextPage();
                            }
                            //
                            final item = controller.callList[index];
                            return Obx(
                              () => CustomerCallItem(
                                title: item.title ?? '',
                                subtitle: item.subtitle,
                                description: item.description,
                                actions: controller.callType == 1
                                    ? [
                                        SizedBox(
                                          height: 40.0.scaleHeight,
                                          child: Obx(
                                            () => TtButton(
                                              fontSize: 13.0,
                                              text: '重新打印'.tr,
                                              isLoading: controller.isBtnLoading && item.uuid == controller.detailId,
                                              onTap: () {
                                                controller.handleReprint(item.uuid);
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40.0.scaleHeight,
                                          child: Obx(
                                            () => TtButton(
                                              fontSize: 13.0,
                                              text: '删除'.tr,
                                              isLoading: controller.isDelLoading && item.uuid == controller.detailId,
                                              onTap: () {
                                                controller.handleDeletePrint(item.uuid);
                                              },
                                            ),
                                          ),
                                        ),
                                      ]
                                    : [
                                        SizedBox(
                                          height: 40.0.scaleHeight,
                                          child: Obx(
                                            () => TtButton(
                                              fontSize: 13.0,
                                              text: '已处理'.tr,
                                              isLoading: controller.isBtnLoading && item.uuid == controller.detailId,
                                              onTap: () {
                                                controller.handleCallFinish(item.uuid);
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                              ),
                            );
                          },
                        )
                      : controller.isLoading
                          ? Center(
                              child: SizedBox(
                                width: 24.0,
                                height: 24.0,
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : Center(
                              child: TtEmpty(
                                imgWidth: 100.0,
                              ),
                            ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                child: TtButton(
                  text: '退出'.tr,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  buttonType: ActionButtonType.normal,
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
