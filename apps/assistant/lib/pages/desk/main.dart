// Package imports:
import 'package:assistant/pages/desk/binding.dart';
import 'package:assistant/pages/desk/view.dart';
import 'package:assistant/pages/home/main.dart';
import 'package:get/get.dart';
// Project imports:

class DeskPage {
  const DeskPage({this.name = HomeRoutes.desk});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        bindings: [
          DeskBinding(),
        ],
        page: () => DeskView(),
      );
}
