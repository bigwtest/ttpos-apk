// Package imports:
import 'package:assistant/pages/desk/main.dart';
import 'package:assistant/pages/desks/main.dart';
import 'package:assistant/pages/home/binding.dart';
import 'package:assistant/pages/home/view.dart';
import 'package:assistant/routers/middleware/auth_middleware.dart';
import 'package:assistant/routers/name.dart';
import 'package:get/get.dart';

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
          const DesksPage(name: HomeRoutes.desks).page,
          const DeskPage(name: HomeRoutes.desk).page,
        ],
      );
}
