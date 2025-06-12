import 'package:assistant/controllers/login/login_controller.dart';
import 'package:assistant/pages/cashier/main.dart';
import 'package:assistant/pages/home/main.dart';
import 'package:assistant/pages/login/binding.dart';
import 'package:assistant/routers/middleware/unauth_middleware.dart';
import 'package:assistant/routers/name.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/pages/login/main.dart';
import 'package:ttpos_ui/pages/splash/main.dart';

class Pages {
  static final List<GetPage> routes = <GetPage>[
    const SplashPage(
      name: RouteNames.splash,
    ).page,
    LoginPage(
      name: RouteNames.login,
      appName: '点餐助手'.tr,
      onSubmit: LoginController.login,
      bindings: [LoginBinding()],
      middlewares: [UnauthMiddleware()],
    ).page,
    const CashierPage(
      name: RouteNames.cashier,
    ).page,
    const HomePage(
      name: RouteNames.home,
    ).page,
  ];
}
