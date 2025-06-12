import 'package:get/get.dart';
import 'package:kds/controllers/login/login_controller.dart';
import 'package:kds/pages/home/main.dart';
import 'package:kds/pages/login/binding.dart';
import 'package:kds/routers/middleware/unauth_middleware.dart';
import 'package:kds/routers/name.dart';
import 'package:ttpos_ui/pages/login/main.dart';
import 'package:ttpos_ui/pages/splash/main.dart';

class Pages {
  static final List<GetPage> routes = <GetPage>[
    // NOTE: 一定要有根路由
    const SplashPage(
      name: RouteNames.splash,
    ).page,
    LoginPage(
      name: RouteNames.login,
      appName: '厨显'.tr,
      onSubmit: LoginController.login,
      bindings: [
        LoginBinding(),
      ],
      middlewares: [
        UnauthMiddleware(),
      ],
    ).page,
    const HomePage(
      name: RouteNames.home,
    ).page,
  ];
}
