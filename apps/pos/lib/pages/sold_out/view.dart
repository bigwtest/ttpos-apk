// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/goods_cart/order/view/header/list_header.dart';
import 'package:pos/components/sold_out/goods/goods_index.dart';
import 'package:pos/components/sold_out/goods_cart/list.dart';
import 'package:pos/components/sold_out/goods_cart/list_head_info.dart';
import 'package:pos/pages/sold_out/controller.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
// Package imports:
import 'package:ttpos_ui/theme/theme.dart';
import 'package:uuid/uuid.dart'; // 商品列表

class SoldOutView extends StatefulWidget {
  const SoldOutView({super.key});

  @override
  State<SoldOutView> createState() => _DeskViewState();
}

class _DeskViewState extends State<SoldOutView> {
  // 控制器实例
  late final SoldOutController controller;
  final String tag = 'sold_out_${const Uuid().v4()}';

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<SoldOutController>(tag: tag);
    } catch (e) {
      controller = Get.put(SoldOutController(tag: tag), tag: tag);
    }
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<SoldOutController>(tag: tag)) {
      Get.delete<SoldOutController>(tag: tag);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomTheme.greyColor.shade100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 458.0.scaleWidthSmall,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 订单操作
                        Obx(
                          () => ListHeadInfo(
                            isLoadingCancelAll: controller.isLoadingCancelAll,
                            count: controller.listSoldOut.length,
                            onTap: controller.handleCancelAllSoldOut,
                          ),
                        ),
                        // 订单头部
                        Obx(
                          () => ListHeader(
                            isEdit: false,
                            numberText: '规格'.tr,
                            numberWidth: 98.0.scaleWidth,
                            totalText: '操作'.tr,
                            totalWidth: 64.0.scaleWidth,
                          ),
                        ),
                        // 订单列表
                        Expanded(
                          child: Obx(
                            () => controller.listSoldOut.isNotEmpty
                                ? SoldOutList(
                                    cancelId: controller.cancelId,
                                    isLoadingCancel: controller.isLoadingCancel,
                                    hasMore: controller.hasMore,
                                    listSoldOut: controller.listSoldOut,
                                    loadNextPage: controller.loadNextPage,
                                    onCancel: controller.handleCancelSoldOut,
                                  )
                                : controller.isLoading && controller.basePageQuery.pageNo == 1
                                    ? Center(
                                        child: SizedBox(
                                          width: 24.0,
                                          height: 24.0,
                                          child: CircularProgressIndicator(),
                                        ),
                                      )
                                    : Center(
                                        child: EmptyDataView(
                                          imgWidth: 100.0,
                                          fontSize: 14.0,
                                        ),
                                      ),
                          ),
                        ),
                        SizedBox(height: 12.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: GoodsIndex(
              tag: tag,
            ),
          ),
        ],
      ),
    );
  }
}
