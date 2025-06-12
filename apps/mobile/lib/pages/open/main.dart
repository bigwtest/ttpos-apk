// Package imports:
import 'package:get/get.dart';
import 'package:mobile/pages/home/main.dart';
import 'package:mobile/pages/open/binding.dart';
import 'package:mobile/pages/open/view.dart';

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
