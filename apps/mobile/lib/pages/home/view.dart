// import 'package:mobile/components/home/header/header.dart';
// import 'package:mobile/controllers/home/home_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/components/home/header/header_view.dart';
import 'package:mobile/controllers/common/drawer_controller.dart';
import 'package:mobile/pages/home/main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDrawerController>(
      builder: (controller) {
        return Scaffold(
          key: controller.scaffoldKey,
          resizeToAvoidBottomInset: true,
          endDrawerEnableOpenDragGesture: false,
          body: Stack(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderView(),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: GetRouterOutlet(
                          initialRoute: HomeRoutes.open.homeRoute,
                          delegate: Get.rootDelegate,
                        ),
                      ),
                    ),
                  ],
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
              onTap: CustomDrawerController.closeDrawer,
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
