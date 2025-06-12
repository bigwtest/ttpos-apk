// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:tablet/components/home/header/header.dart';
import 'package:tablet/controllers/common/home_drawer_controller.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:tablet/pages/home/main.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_ui/theme/theme.dart';
// 订单操作-抽屉

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _updateScaffoldKey() {
    if (Get.isRegistered<HomeDrawerController>()) {
      Get.find<HomeDrawerController>().scaffoldKey = _scaffoldKey;
    }
  }

  void _setupWebSocket() {
    if (Get.isRegistered<TokenController>()) {
      final TokenController tokenController = Get.find<TokenController>();
      final token = tokenController.token;
      if (token != null && token.isNotEmpty) {
        Future.microtask(() {
          WebSocketService.to.init(
            token: token,
            client: WebSocketClient.tablet,
            showToast: false,
          );
        });
      }
    }
  }

  void _initCurrentRoute() {
    if (Get.isRegistered<DeskBindController>()) {
      final deskBindController = Get.find<DeskBindController>();
      if (deskBindController.desk != null &&
          deskBindController.desk?.isAvailable == false &&
          deskBindController.desk?.isWait == false) {
        Future.microtask(() {
          Get.rootDelegate.toNamed(HomeRoutes.desk.homeRoute);
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();

    /// 更新 ScaffoldKey
    _updateScaffoldKey();

    /// 初始化 WebSocket
    _setupWebSocket();

    /// 初始化当前路由
    _initCurrentRoute();
  }

  @override
  void dispose() {
    /// 关闭 WebSocket
    WebSocketService.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeDrawerController>(
      builder: (controller) {
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: Obx(() => controller.drawerView),
          resizeToAvoidBottomInset: false,
          endDrawerEnableOpenDragGesture: false,
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Column(
              children: [
                Header(),
                Expanded(
                  child: Container(
                    color: CustomTheme.greyColor.shade100,
                    child: GetRouterOutlet(
                      initialRoute: HomeRoutes.open.homeRoute,
                      delegate: Get.rootDelegate,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
