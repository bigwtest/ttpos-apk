// Package imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/components/accept/accept_history_drawer.dart';

class CustomDrawerController extends GetxController {
  late GlobalKey<ScaffoldState> scaffoldKey;

  final RxString _currentDrawer = ''.obs;

  String get currentDrawer => _currentDrawer.value;

  void setCurrentDrawer(String drawer) {
    _currentDrawer.value = drawer;
  }

  // 添加参数类型定义
  final Rx<Map<String, dynamic>> _drawerParams = Rx<Map<String, dynamic>>({});
  Map<String, dynamic> get drawerParams => _drawerParams.value;

  void openEndDrawer(String drawerName, [Map<String, dynamic>? params]) {
    _currentDrawer.value = drawerName;
    _drawerParams.value = params ?? {};
    scaffoldKey.currentState?.openEndDrawer();
  }

  Widget getDrawerView() {
    switch (currentDrawer) {
      case 'acceptHistory':
        return const AcceptHistoryDrawer();
      default:
        return const SizedBox.shrink();
    }
  }
}
