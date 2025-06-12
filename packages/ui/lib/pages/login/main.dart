import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/pages/login/binding.dart';
import 'package:ttpos_ui/pages/login/model.dart';
import 'package:ttpos_ui/pages/login/view.dart';

class LoginPage {
  const LoginPage({
    this.name = '/login',
    this.appName = 'TTPOS',
    required this.onSubmit,
    this.bindings = const [],
    this.middlewares = const [],
    this.scaffoldKey,
    this.endDrawer,
    this.endDrawerEnableOpenDragGesture,
    this.onEndDrawerChanged,
  });

  /// 基础数据
  final String name;
  final String appName;
  final Future<bool> Function(LoginForm) onSubmit;
  final List<Bindings> bindings;
  final List<GetMiddleware> middlewares;

  /// 抽屉
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final Widget? endDrawer;
  final bool? endDrawerEnableOpenDragGesture;
  final Function(bool)? onEndDrawerChanged;

  GetPage get page => GetPage(
        name: name,
        page: () => LoginView(
          appName: appName,
          onSubmit: onSubmit,

          ///
          scaffoldKey: scaffoldKey,
          endDrawer: endDrawer,
          endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
          onEndDrawerChanged: onEndDrawerChanged,
        ),
        bindings: [
          LoginBinding(),
          ...bindings,
        ],
        transition: Transition.downToUp,
        middlewares: [
          ...middlewares,
        ],
      );
}
