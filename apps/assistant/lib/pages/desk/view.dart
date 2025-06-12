import 'package:assistant/api/goods/category_api.dart';
import 'package:assistant/api/goods/goods_api.dart';
import 'package:assistant/api/order/desk_ping_api.dart';
import 'package:assistant/controllers/base/main_controller.dart';
import 'package:assistant/pages/desk/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/goods/views/goods_view.dart';
import 'package:ttpos_ui/components/tablet_cart/views/cart/cart_nav.dart';
import 'package:ttpos_ui/components/tablet_cart/views/desk_info/info_left.dart';
import 'package:ttpos_ui/components/tablet_cart/views/desk_info/info_right.dart';
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
  late final DeskMainController controller;
  final String tag = 'desk_${const Uuid().v4()}';
  //
  final baseInfoController = Get.find<BaseInfoController>();

  @override
  void initState() {
    super.initState();
    // 初始化控制器
    try {
      controller = Get.find<DeskMainController>(tag: tag);
    } catch (e) {
      controller = Get.put(
        DeskMainController(
          tag: tag,
          fetchDeskPing: (deskId) async {
            final (res, errorCode) = await DeskPingAPI().getDeskPing(deskId);
            // 成功
            if (errorCode == ErrorCode.success) {
              return res;
            }
            // 失败
            if (errorCode.code == ErrorCode.deskCartInfoInvalid.code) {
              controller.handleBack();
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
    if (Get.isRegistered<DeskMainController>(tag: tag)) {
      Get.delete<DeskMainController>(tag: tag);
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
                () => Expanded(
                  child: InfoLeft(
                    deskInfo: controller.deskInfo,
                    buffetInfo: controller.buffetInfo,
                    isReminderDialog: false,
                  ),
                ),
              ),
              Obx(
                () => InfoRight(
                  actionList: controller.actionList,
                  hasSettle: baseInfoController.hasSettle,
                  onSelected: controller.handleAction,
                  // 点击返回
                  onBack: controller.handleBack,
                  // 点击结账
                  onConfirmPayment: controller.handleConfirmPayment,
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
                    amountInfo: controller.unsentKitchenInfo?.amountInfo ??
                        UnsentKitchenAmountInfo(
                          productAmount: SafetyNumber.zero,
                          productNum: 0,
                        ),
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
