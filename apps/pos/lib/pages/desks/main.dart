// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/pages/desks/binding.dart';
import 'package:pos/pages/desks/view.dart';
import 'package:pos/pages/home/main.dart';

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
