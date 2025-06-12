// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:kds/components/home/header/header.dart';
import 'package:kds/controllers/common/drawer_controller.dart';
import 'package:kds/pages/home/main.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/websocket_service.dart';
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
    if (Get.isRegistered<CustomDrawerController>()) {
      Get.find<CustomDrawerController>().scaffoldKey = _scaffoldKey;
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
            client: WebSocketClient.kds,
            showToast: false,
          );
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
  }

  @override
  void dispose() {
    /// 关闭 WebSocket
    WebSocketService.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDrawerController>(
      builder: (controller) {
        return Scaffold(
          key: _scaffoldKey,
          resizeToAvoidBottomInset: false,
          endDrawer: Obx(() => controller.getDrawerView()),
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
                    padding: EdgeInsets.all(16.0),
                    child: GetRouterOutlet(
                      initialRoute: HomeRoutes.accept.homeRoute,
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
