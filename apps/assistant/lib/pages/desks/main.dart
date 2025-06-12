// Package imports:
import 'package:assistant/pages/desks/binding.dart';
import 'package:assistant/pages/desks/view.dart';
import 'package:assistant/pages/home/main.dart';
import 'package:get/get.dart';
// Project imports:

class DesksPage {
  const DesksPage({this.name = HomeRoutes.desks});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        bindings: [
          DesksBinding(),
        ],
        page: () => DesksView(),
      );
}
