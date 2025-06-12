// Package imports:
import 'package:get/get.dart';
import 'package:menu/pages/login/view.dart';
import 'package:menu/routers/name.dart';

class LoginPage {
  const LoginPage({this.name = RouteNames.login});

  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => const LoginView(),
        transition: Transition.fadeIn,
      );
}
