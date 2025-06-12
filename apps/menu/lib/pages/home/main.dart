// Package imports:
import 'package:get/get.dart';
import 'package:menu/pages/home/binding.dart';
import 'package:menu/pages/home/view.dart';
import 'package:menu/routers/name.dart';

class HomePage {
  const HomePage({this.name = RouteNames.login});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => const HomeView(),
        transition: Transition.fadeIn,
        bindings: [HomeBinding()],
      );
}
