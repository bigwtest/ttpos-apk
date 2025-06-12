// Package imports:
import 'package:get/get.dart';
import 'package:kds/pages/accept/binding.dart';
import 'package:kds/pages/accept/view.dart';
import 'package:kds/pages/home/main.dart';

class AcceptPage {
  const AcceptPage({this.name = HomeRoutes.accept});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => AcceptView(),
        bindings: [AcceptBinding()],
      );
}
