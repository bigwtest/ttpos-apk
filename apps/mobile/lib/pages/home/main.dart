// Package imports:
import 'package:get/get.dart';
import 'package:mobile/pages/desk/main.dart';
import 'package:mobile/pages/home/binding.dart';
import 'package:mobile/pages/home/view.dart';
import 'package:mobile/pages/open/main.dart';
import 'package:mobile/routers/name.dart';

part 'route.dart';

class HomePage {
  const HomePage({this.name = RouteNames.home});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => HomeView(),
        bindings: [HomeBinding()],
        transition: Transition.fadeIn,
        children: [
          const OpenPage(name: HomeRoutes.open).page,
          const DeskPage(name: HomeRoutes.desk).page,
        ],
      );
}
