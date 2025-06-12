import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/api/goods/category_api.dart';
import 'package:tablet/api/goods/goods_api.dart';
import 'package:tablet/api/order/desk_ping_api.dart';
import 'package:tablet/controllers/base/main_controller.dart';
import 'package:tablet/pages/desk/controller.dart';
import 'package:tablet/pages/home/main.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/goods/views/goods_view.dart';
import 'package:ttpos_ui/components/tablet_cart/views/cart/cart_nav.dart';
import 'package:ttpos_ui/components/tablet_cart/views/desk_info/info_left.dart';
import 'package:ttpos_ui/components/tt_order_lock/tt_order_lock.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:uuid/uuid.dart';

class DeskView extends StatefulWidget {
  const DeskView({super.key});

  @override
  State<DeskView> createState() => _DeskViewState();
}

class _DeskViewState extends State<DeskView> {
  // 控制器实例
  late final DeskController controller;
  final String tag = 'desk_${const Uuid().v4()}';
  //
  final baseInfoController = Get.find<BaseInfoController>();

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<DeskController>(tag: tag);
    } catch (e) {
      controller = Get.put(
        DeskController(
          fetchDeskPing: (deskId) async {
            final (res, errorCode) = await DeskPingAPI().getDeskPing(
              deskId,
              options: ExtraRequestOptions(
                showFailToast: true,
              ),
            );
            // 成功
            if (errorCode == ErrorCode.success) {
              return res;
            }
            // 失败
            if (errorCode.code == ErrorCode.deskCartInfoInvalid.code) {
              if (Get.rootDelegate.currentConfiguration?.locationString == HomeRoutes.desk.homeRoute) {
                Future.microtask(() {
                  Get.rootDelegate.offNamed(HomeRoutes.open.homeRoute);
                });
              }
            }
            return null;
          },
        ),
        tag: tag,
      );
    }
  }

  @override
  void dispose() {
    // 销毁控制器
    if (Get.isRegistered<DeskController>(tag: tag)) {
      Get.delete<DeskController>(tag: tag);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    return Container(
      color: CustomTheme.greyColor.shade100,
      padding: EdgeInsets.all(
        16.0.scalePadding,
      ),
      child: Column(
        spacing: 10.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => InfoLeft(
                  buffetInfo: controller.buffetInfo,
                  deskInfo: controller.deskInfo,
                  mealReminderTime: baseInfoController.buffet?.tabletEndTime ?? 0,
                ),
              ),
            ],
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none, // 允许超出 Stack 边界的部分显示
              children: [
                // 商品列表
                Obx(
                  () => GoodsView(
                    tag: tag,
                    isShowSearch: false,
                    maxWidth: 160.0.scaleWidth,
                    isShowMake: baseInfoController.isOpen,
                    sentKitchenProducts: controller.sentKitchenProducts,
                    isBuffet: controller.deskInfo?.isBuffet ?? false,
                    onBuffetList: () => GoodsAPI().getBuffetGoodsList(controller.saleBillUuid),
                    onCategoryList: CategoryAPI().getCategoryList,
                    onGoodsBaseList: GoodsAPI().getGoodsList,
                    // 点击商品
                    onDetailChange: controller.handleDetailChange,
                  ),
                ),
                // 购物车导航
                Obx(
                  () => DeskCartNav(
                    cartIconKey: controller.cartIconKey,
                    amountInfo: controller.amountInfo,
                    onChange: controller.handleCartNav,
                  ),
                ),
                // 是否锁定
                Obx(
                  () => (controller.deskInfo?.isLock ?? false)
                      ? Positioned(
                          left: 0.0,
                          right: 0.0,
                          top: 0.0,
                          bottom: -6.0,
                          child: TtOrderLock(),
                        )
                      : SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
