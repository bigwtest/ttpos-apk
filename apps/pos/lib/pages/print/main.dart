// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/pages/home/main.dart';
import 'package:pos/pages/print/view.dart';
import 'package:pos/pages/print/binding.dart';

class PrintPage {
  const PrintPage({this.name = HomeRoutes.prints});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        page: () => const PrintView(),
        bindings: [PrintBinding()],
      );
}
