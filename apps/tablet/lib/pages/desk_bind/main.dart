// Package imports:
import 'package:get/get.dart';
import 'package:tablet/pages/desk_bind/binding.dart';
import 'package:tablet/pages/desk_bind/view.dart';
import 'package:tablet/routers/middleware/auth_middleware.dart';
import 'package:tablet/routers/name.dart';
// Project imports:

class DeskBindPage {
  const DeskBindPage({
    this.name = RouteNames.deskBind,
  });

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        bindings: [
          DeskBindBinding(),
        ],
        page: () => DeskBindView(),
        middlewares: [
          AuthMiddleware(),
        ],
      );
}
