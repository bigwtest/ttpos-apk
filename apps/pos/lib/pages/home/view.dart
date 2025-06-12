// Flutter imports:
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/report/report.dart';
import 'package:pos/components/home/header/header.dart';
import 'package:pos/components/home/sidebar/sidebar.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/common/cash_box_controller.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:pos/controllers/lock/lock_controller.dart';
import 'package:pos/pages/home/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/report/response/report_info.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/common/activity_mixin.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
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
    if (Get.isRegistered<CustomDrawerController>()) {
      Get.find<CustomDrawerController>().scaffoldKey = _scaffoldKey;
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

  void _setupLockScreen() async {
    final (bool isAutoLockScreen, int duration) = await _checkAutoLockScreen();

    if (Get.isRegistered<SharedPreferencesWithCache>()) {
      final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
      await storage.setBool(StorageKey.isLockScreen.asString, isAutoLockScreen);
    }

    if (isAutoLockScreen && duration > 0) {
      turnOnDetectActivity(duration: Duration(seconds: duration));
    } else {
      turnOffDetectActivity();
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
            client: WebSocketClient.pos,
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

  Future<void> _checkFirstLogin() async {
    if (Get.isRegistered<SharedPreferencesWithCache>()) {
      final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
      // 如果首次登录，则报备
      final bool isFirstLogin = storage.getBool(StorageKey.isFirstLogin.asString) ?? false;
      if (isFirstLogin) {
        final ReportAPI reportInfoAPI = ReportAPI();
        final RespCashierReportInfo? reportInfo = await reportInfoAPI.getReportInfo();
        CashBoxController.openCashBox();
        if (reportInfo == null) return;
        await DialogManager.showReportOnDialog(
          money: reportInfo.previousShiftCash.toString(),
          showCancelButton: false,
          onConfirm: (value) async {
            storage.setBool(StorageKey.isFirstLogin.asString, false);
            try {
              final response = await reportInfoAPI.submitReportInfo(
                value,
                ExtraRequestOptions(
                  showFailToast: true,
                  showSuccessToast: true,
                ),
              );
              if (response == null) return false;
              return true;
            } catch (e) {
              return false;
            }
          },
        );
      }
    }
  }

  void _openLockScreen() {
    /// 关闭检测活动
    turnOffDetectActivity();

    /// 打开锁屏对话框
    Future.microtask(() {
      LockScreenDialog.open(
        appName: '收银机'.tr,
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

    /// 检查是否首次登录
    _checkFirstLogin();

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
            child: Row(
              children: [
                Sidebar(),
                Expanded(
                  child: Column(
                    children: [
                      Header(),
                      Expanded(
                        child: Container(
                          color: CustomTheme.greyColor.shade100,
                          padding: const EdgeInsets.all(16.0),
                          child: GetRouterOutlet(
                            initialRoute: HomeRoutes.empty.homeRoute,
                            delegate: Get.rootDelegate,
                          ),
                        ),
                      ),
                    ],
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
