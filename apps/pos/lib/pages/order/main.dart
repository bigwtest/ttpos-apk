// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/pages/home/main.dart';
import 'package:pos/pages/order/view.dart';

import 'binding.dart';

// Project imports

class OrderPage {
  const OrderPage({this.name = HomeRoutes.orders});

  final String name;

  GetPage get page => GetPage(
        name: name,
        transition: Transition.fadeIn,
        page: () => const OrderView(),
        bindings: [OrderBinding()],
      );
}
