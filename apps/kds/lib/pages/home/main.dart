// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:kds/pages/accept/main.dart';
import 'package:kds/pages/home/binding.dart';
import 'package:kds/pages/home/view.dart';
import 'package:kds/routers/name.dart';

part 'route.dart';

class HomePage {
  const HomePage({this.name = RouteNames.home});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => HomeView(),
        bindings: [HomeBinding()],
        transition: Transition.fadeIn,
        // middlewares: [AuthMiddleware()],
        children: [
          const AcceptPage(name: HomeRoutes.accept).page,
        ],
      );
}
