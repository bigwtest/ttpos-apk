// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/pages/desk/binding.dart';
import 'package:pos/pages/desk/view.dart';
import 'package:pos/pages/home/main.dart';

class DeskPage {
  const DeskPage({this.name = HomeRoutes.desk});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        bindings: [
          DeskViewBinding(),
        ],
        page: () => DeskView(),
      );
}
