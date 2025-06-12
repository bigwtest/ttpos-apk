import 'dart:ui';

import 'package:assistant/components/home/header/header.dart';
import 'package:assistant/controllers/base/main_controller.dart';
import 'package:assistant/controllers/home/home_drawer_controller.dart';
import 'package:assistant/controllers/lock/lock_controller.dart';
import 'package:assistant/pages/home/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/common/activity_mixin.dart';
import 'package:ttpos_ui/pages/lock_screen/dialog.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with DetectActivityMixin {
  late final AppLifecycleListener _lifecycleListener;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _updateScaffoldKey() {
    if (Get.isRegistered<HomeDrawerController>()) {
      Get.find<HomeDrawerController>().scaffoldKey = _scaffoldKey;
    }
  }

  Future<(bool, int)> _checkAutoLockScreen({bool openImmediate = false}) async {
    if (Get.isRegistered<BaseInfoController>()) {
      final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
      await baseInfoController.loadBaseInfoFromAPI();

      if (baseInfoController.isAutoLockScreen && baseInfoController.autoLockScreenDuration > 0) {
        if (openImmediate) {
          _openLockScreen();
        }
        return (true, baseInfoController.autoLockScreenDuration);
      }
    }

    return (false, 0);
  }

  void _setupLockScreen() {
    if (Get.isRegistered<BaseInfoController>()) {
      final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
      if (baseInfoController.isAutoLockScreen && baseInfoController.autoLockScreenDuration > 0) {
        turnOnDetectActivity(
          duration: Duration(
            seconds: baseInfoController.autoLockScreenDuration,
          ),
        );
      } else {
        turnOffDetectActivity();
      }
    }
  }

  void _setupWebSocket() {
    // FIXME: 因为 token 混用了，导致助手这边整个业务流程都用的是 cashier 的 token，但 websocket 又要用 assistant 的 token
    // if (Get.isRegistered<TokenController>()) {
    //   final TokenController tokenController = Get.find<TokenController>();
    //   final token = tokenController.token;
    //   if (token != null && token.isNotEmpty) {
    //     Future.microtask(() {
    //       WebSocketService.to.init(
    //         token: token,
    //         client: WebSocketClient.assistant,
    //         showToast: false,
    //       );
    //     });
    //   }
    // }
    if (Get.isRegistered<SharedPreferencesWithCache>()) {
      final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
      final token = storage.getString(StorageKey.authTokenAssistant.asString);
      if (token != null && token.isNotEmpty) {
        Future.microtask(() {
          WebSocketService.to.init(
            token: token,
            client: WebSocketClient.assistant,
            showToast: false,
          );
        });
      }
    }
  }

  void _updateBaseInfoController() {
    if (Get.isRegistered<BaseInfoController>()) {
      turnOffDetectActivity();

      final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
      baseInfoController.turnOnDetectActivity = turnOnDetectActivity;
      baseInfoController.turnOffDetectActivity = turnOffDetectActivity;
    }
  }

  void _openLockScreen() {
    /// 关闭检测活动
    turnOffDetectActivity();

    /// 打开锁屏对话框
    Future.microtask(() {
      LockScreenDialog.open(
        appName: '点餐助手'.tr,
        onVerify: LockController.verifyLockPassword,
        onSuccess: () async => _setupLockScreen(),
      );
    });
  }

  void _checkLockScreenFromStorage() {
    if (Get.isRegistered<SharedPreferencesWithCache>()) {
      final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
      final bool isLockScreen = storage.getBool(StorageKey.isLockScreen.asString) ?? false;

      if (isLockScreen) {
        _openLockScreen();
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

    /// 初始化检测活动
    _updateBaseInfoController();

    /// 启动时从缓存中检查锁屏状态
    _checkLockScreenFromStorage();

    /// 初始化锁屏
    _setupLockScreen();

    /// 设置检测活动超时
    onInactivityTimeout = () {
      _openLockScreen();
    };

    /// 初始化 AppLifecycleListener
    _lifecycleListener = AppLifecycleListener(
      onResume: () {
        /// 检查是否需要锁屏
        _checkAutoLockScreen(openImmediate: true);
      },
      onExitRequested: () async {
        if (Get.isRegistered<SharedPreferencesWithCache>()) {
          final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();

          /// 检查是否需要锁屏, 并存储锁屏状态到缓存
          final (bool isAutoLockScreen, int duration) = await _checkAutoLockScreen();
          await storage.setBool(StorageKey.isLockScreen.asString, isAutoLockScreen);
        }

        return Future.value(AppExitResponse.exit);
      },
    );
  }

  @override
  void dispose() {
    /// 关闭 WebSocket
    WebSocketService.close();

    /// 关闭 AppLifecycleListener
    _lifecycleListener.dispose();

    super.dispose();
  }

  @override
  Widget buildWithActivity(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                Expanded(
                  child: Container(
                    color: CustomTheme.greyColor.shade100,
                    child: GetRouterOutlet(
                      initialRoute: HomeRoutes.desks.homeRoute,
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
