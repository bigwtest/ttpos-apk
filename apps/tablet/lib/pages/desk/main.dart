// Package imports:
import 'package:get/get.dart';
import 'package:tablet/pages/desk/binding.dart';
// Project imports:
import 'package:tablet/pages/desk/view.dart';
import 'package:tablet/pages/home/main.dart';

class DeskPage {
  const DeskPage({this.name = HomeRoutes.desk});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => const DeskView(),
        bindings: [DeskBinding()],
        transition: Transition.fadeIn,
      );
}
