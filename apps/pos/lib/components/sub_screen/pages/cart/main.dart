// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/sub_screen/pages/cart/binding.dart';
import 'package:pos/components/sub_screen/pages/cart/view.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

class CartPage {
  const CartPage({this.name = SubScreenRouteNames.cart});
  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => const CartView(),
        bindings: [CartBinding()],
        transition: Transition.fadeIn,
      );
}
