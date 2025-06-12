// Package imports:
import 'package:get/get.dart';
import 'package:pos/pages/home/main.dart';
// Project imports:
import 'package:pos/pages/setting/binding.dart';
import 'package:pos/pages/setting/view.dart';

class SettingPage {
  const SettingPage({this.name = HomeRoutes.settings});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        bindings: [SettingBinding()],
        page: () => SettingView(),
      );
}
