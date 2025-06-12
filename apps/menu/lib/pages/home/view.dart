import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu/components/goods/goods_list_view.dart';
import 'package:menu/components/header/header_view.dart';
import 'package:menu/controllers/common/drawer_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDrawerController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderView(),
                      Expanded(
                        child: GoodsListView(),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(() => _buildBottomDrawer(controller)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBottomDrawer(CustomDrawerController controller) {
    if (!controller.isDrawerOpen.value) {
      return const SizedBox.shrink();
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      child: Stack(
        children: [
          // 黑色透明遮罩层
          Positioned.fill(
            child: GestureDetector(
              onTap: controller.closeDrawer,
              child: Container(
                color: Color.fromRGBO(16, 10, 5, 0.7),
              ),
            ),
          ),
          // 抽屉内容
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: controller.animationController,
                  curve: Curves.easeOut,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    controller.getDrawerView,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
