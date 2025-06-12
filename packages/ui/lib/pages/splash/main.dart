// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:ttpos_ui/pages/splash/binding.dart';
import 'package:ttpos_ui/pages/splash/view.dart';

class SplashPage {
  const SplashPage({this.name = '/'});
  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => const SplashView(),
        bindings: [
          SplashBinding(),
        ],
        transition: Transition.fade,
      );
}
