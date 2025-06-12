// Package imports:
import 'package:get/get.dart';
import 'package:pos/pages/home/main.dart';
import 'package:pos/pages/instant/binding.dart';
import 'package:pos/pages/instant/view.dart';

class InstantPage {
  const InstantPage({this.name = HomeRoutes.instant});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        page: () => InstantView(),
        bindings: [InstantBinding()],
      );
}
