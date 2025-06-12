// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/pages/home/main.dart';
import 'package:pos/pages/sold_out/binding.dart';
import 'package:pos/pages/sold_out/view.dart';

class SoldOutPage {
  const SoldOutPage({this.name = HomeRoutes.soldOut});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        bindings: [SoldOutBinding()],
        page: () => const SoldOutView(),
      );
}
