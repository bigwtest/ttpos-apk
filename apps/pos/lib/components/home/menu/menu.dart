// Flutter imports:
import 'package:flutter/material.dart' hide MenuController;
// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/home/menu/menu_controller.dart';
// Project imports:
import 'package:pos/components/home/menu/menu_item.dart';
import 'package:pos/components/member/add_member_view.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:pos/controllers/member/recharge_controller.dart';
import 'package:pos/pages/home/main.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Menu extends GetView<BaseInfoController> {
  Menu({super.key});

  final CustomDrawerController drawerController = Get.find<CustomDrawerController>();
  final MenuController menuController = Get.find<MenuController>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Obx(
              () => Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.scalePadding),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 8.0.scalePadding,
                      children: [
                        if (controller.hasInstantMain)
                          MenuItem(
                            title: '点餐'.tr,
                            icon: Iconfont.wallet,
                            route: HomeRoutes.instant.homeRoute,
                          ),
                        if (controller.hasDeskMain)
                          MenuItem(
                            title: '桌台'.tr,
                            icon: Iconfont.reserve,
                            route: HomeRoutes.desks.homeRoute,
                          ),
                        if (controller.hasOrderMain || controller.hasRecharge)
                          MenuItem(
                            title: '订单'.tr,
                            icon: Iconfont.order,
                            route: HomeRoutes.orders.homeRoute,
                          ),
                        if (controller.hasSoldOut)
                          MenuItem(
                            title: '沽清'.tr,
                            icon: Iconfont.boxRemove,
                            route: HomeRoutes.soldOut.homeRoute,
                          ),
                        if (controller.hasAcceptOrder)
                          MenuItem(
                            title: '接单'.tr,
                            icon: Iconfont.clipboard,
                            num: menuController.unprocessedH5OrderCount,
                            route: HomeRoutes.accept.homeRoute,
                          ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 8.0.scalePadding,
                      children: [
                        if (controller.hasOpenBox)
                          MenuItem(
                            title: '钱箱'.tr,
                            icon: Iconfont.strongbox,
                            isRoute: false,
                            onTap: controller.openCashBox,
                          ),
                        if (controller.hasBusinessData)
                          MenuItem(
                            title: '数据'.tr,
                            icon: Iconfont.statusUp,
                            isRoute: false,
                            onTap: () {
                              drawerController.openEndDrawer('data');
                            },
                          ),
                        if (controller.hasSetting)
                          MenuItem(
                            title: '设置'.tr,
                            icon: Iconfont.setting,
                            route: HomeRoutes.settings.homeRoute,
                          ),
                        PopupMenuButton(
                          offset: const Offset(70, 0), // 设置弹出位置在右侧
                          position: PopupMenuPosition.over, // 设置弹出位置在右侧
                          color: CustomTheme.secondaryColor,
                          child: MenuItem(
                            title: '更多'.tr,
                            icon: Iconfont.frame,
                            isRoute: false,
                          ),
                          itemBuilder: (context) => <PopupMenuEntry>[
                            if (controller.hasAddMember)
                              PopupMenuItem(
                                height: 40.0.scaleHeight,
                                child: Row(
                                  children: [
                                    Text(
                                      '添加会员'.tr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  showAddMemberDialog();
                                },
                              ),
                            if (controller.hasRecharge)
                              PopupMenuItem(
                                height: 40.0.scaleHeight,
                                child: Row(
                                  children: [
                                    Text(
                                      '会员充值'.tr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  MemberRechargeController.onRechargeTap();
                                },
                              ),
                            if (controller.hasPermission(PermissionKey.printsPrint))
                              PopupMenuItem(
                                height: 40.0.scaleHeight,
                                child: Row(
                                  children: [
                                    Text(
                                      '打印记录'.tr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () => menuController.setCurrentRoute(HomeRoutes.prints.homeRoute),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
