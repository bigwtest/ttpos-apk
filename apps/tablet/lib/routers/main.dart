// Package imports:
import 'package:get/get.dart';
// import 'package:tablet/components/desk/views/drawer.dart';
// import 'package:tablet/controllers/desk/bind_controller.dart';
import 'package:tablet/controllers/login/login_controller.dart';
import 'package:tablet/pages/desk_bind/main.dart';
// Project imports:
import 'package:tablet/pages/home/main.dart';
import 'package:tablet/pages/login/binding.dart';
import 'package:tablet/routers/middleware/unauth_middleware.dart';
import 'package:tablet/routers/name.dart';
import 'package:ttpos_ui/pages/login/main.dart';
import 'package:ttpos_ui/pages/splash/main.dart';

class Pages {
  static final List<GetPage> routes = <GetPage>[
    // NOTE: 一定要有根路由
    const SplashPage(
      name: RouteNames.splash,
    ).page,
    // 登录页
    LoginPage(
      name: RouteNames.login,
      appName: '平板点餐'.tr,
      onSubmit: LoginController.login,
      bindings: [
        LoginBinding(),
      ],
      middlewares: [
        UnauthMiddleware(),
      ],
      // scaffoldKey: BindDeskDrawerController.scaffoldKey,
      // endDrawer: BindDeskDrawer(),
      // endDrawerEnableOpenDragGesture: false,
      // onEndDrawerChanged: BindDeskDrawerController.onEndDrawerChanged,
    ).page,
    // 绑定桌台页
    const DeskBindPage(
      name: RouteNames.deskBind,
    ).page,
    // 主页
    const HomePage(
      name: RouteNames.home,
    ).page,
  ];
}
