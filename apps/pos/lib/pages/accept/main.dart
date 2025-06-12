// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/pages/accept/binding.dart';
import 'package:pos/pages/accept/view.dart';
import 'package:pos/pages/home/main.dart';

class AcceptPage {
  const AcceptPage({this.name = HomeRoutes.accept});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        page: () => AcceptView(),
        bindings: [AcceptBinding()],
      );
}
