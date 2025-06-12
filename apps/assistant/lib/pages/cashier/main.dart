// Package imports:
import 'package:assistant/pages/cashier/binding.dart';
import 'package:assistant/pages/cashier/view.dart';
import 'package:assistant/routers/name.dart';
import 'package:get/get.dart';
// Project imports:

class CashierPage {
  const CashierPage({this.name = RouteNames.cashier});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        bindings: [
          CashierBinding(),
        ],
        page: () => CashierView(),
      );
}
