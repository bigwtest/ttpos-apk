// Package imports:
import 'package:get/get.dart';
import 'package:pos/pages/empty/binding.dart';
// Project imports:
import 'package:pos/pages/empty/view.dart';
import 'package:pos/pages/home/main.dart';

class EmptyPage {
  const EmptyPage({this.name = HomeRoutes.empty});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        page: () => EmptyView(),
        bindings: [EmptyBinding()],
      );
}
