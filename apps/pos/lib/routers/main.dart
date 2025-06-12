// Package imports:
import 'package:get/get.dart';
import 'package:pos/controllers/login/login_controller.dart';
// Project imports:
import 'package:pos/pages/home/main.dart';
import 'package:pos/pages/login/binding.dart';
import 'package:pos/routers/middleware/unauth_middleware.dart';
import 'package:pos/routers/name.dart';
import 'package:ttpos_ui/pages/login/main.dart';
import 'package:ttpos_ui/pages/splash/main.dart';

class Pages {
  static final List<GetPage> routes = <GetPage>[
    const SplashPage(
      name: RouteNames.splash,
    ).page,
    LoginPage(
      name: RouteNames.login,
      appName: '收银机'.tr,
      onSubmit: LoginController.login,
      bindings: [LoginBinding()],
      middlewares: [UnauthMiddleware()],
    ).page,
    const HomePage(
      name: RouteNames.home,
    ).page,
  ];
}
