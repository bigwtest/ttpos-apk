// Package imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/mobile_header/select_language_view.dart';

enum DrawerType {
  language, // 设置语言
}

class CustomDrawerController extends GetxController with GetSingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //
  final Rx<DrawerType> _currentDrawer = DrawerType.language.obs;
  DrawerType get currentDrawer => _currentDrawer.value;
  //
  final Rx<bool> isDrawerOpen = false.obs;
  // 添加参数类型定义
  final Rx<Map<String, dynamic>> _drawerParams = Rx<Map<String, dynamic>>({});
  Map<String, dynamic> get drawerParams => _drawerParams.value;

  void openEndDrawer(DrawerType drawerName, [Map<String, dynamic>? params]) {
    _currentDrawer.value = drawerName;
    _drawerParams.value = params ?? {};
    scaffoldKey.currentState?.openEndDrawer();
    openDrawer();
  }

  Widget get getDrawerView {
    switch (currentDrawer) {
      case DrawerType.language:
        return SelectLanguageView(
          onSelectLanguage: () {
            closeDrawer();
          },
        );
    }
  }

  late AnimationController animationController;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  void openDrawer() {
    isDrawerOpen.value = true;
    animationController.forward();
  }

  void closeDrawer() {
    animationController.reverse().then((_) {
      isDrawerOpen.value = false;
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
