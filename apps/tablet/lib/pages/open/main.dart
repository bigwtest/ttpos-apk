// Package imports:
import 'package:get/get.dart';
import 'package:tablet/pages/home/main.dart';
import 'package:tablet/pages/open/binding.dart';
import 'package:tablet/pages/open/view.dart';

class OpenPage {
  const OpenPage({this.name = HomeRoutes.open});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => const OpenView(),
        bindings: [OpenBinding()],
        transition: Transition.fadeIn,
      );
}
