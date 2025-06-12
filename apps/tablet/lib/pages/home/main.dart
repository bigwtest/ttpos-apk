// Package imports:
import 'package:get/get.dart';
import 'package:tablet/pages/desk/main.dart';
import 'package:tablet/pages/home/binding.dart';
import 'package:tablet/pages/home/view.dart';
import 'package:tablet/pages/open/main.dart';
import 'package:tablet/routers/middleware/auth_middleware.dart';
import 'package:tablet/routers/name.dart';

part 'route.dart';

class HomePage {
  const HomePage({this.name = RouteNames.home});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => HomeView(),
        bindings: [HomeBinding()],
        transition: Transition.fadeIn,
        middlewares: [AuthMiddleware()],
        children: [
          const OpenPage(name: HomeRoutes.open).page,
          const DeskPage(name: HomeRoutes.desk).page,
        ],
      );
}
