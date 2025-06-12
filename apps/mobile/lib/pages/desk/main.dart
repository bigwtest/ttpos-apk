// Package imports:
import 'package:get/get.dart';
import 'package:mobile/pages/desk/binding.dart';
// Project imports:
import 'package:mobile/pages/desk/view.dart';
import 'package:mobile/pages/home/main.dart';

class DeskPage {
  const DeskPage({this.name = HomeRoutes.desk});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => DeskView(),
        bindings: [DeskBinding()],
        transition: Transition.fadeIn,
      );
}
