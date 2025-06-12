import 'package:get/get.dart';
import 'package:mobile/pages/home/main.dart';
import 'package:mobile/pages/login/main.dart';
import 'package:mobile/routers/name.dart';
// import 'package:ttpos_ui/pages/splash/main.dart';

class Pages {
  static final List<GetPage> routes = <GetPage>[
    const HomePage(
      name: RouteNames.splash,
    ).page,
    const LoginPage(
      name: RouteNames.login,
    ).page,
    const HomePage(
      name: RouteNames.home,
    ).page,
  ];
}
