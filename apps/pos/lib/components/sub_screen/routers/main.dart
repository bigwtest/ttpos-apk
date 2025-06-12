// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/sub_screen/pages/carousel/main.dart';
import 'package:pos/components/sub_screen/pages/cart/main.dart';
import 'package:pos/components/sub_screen/pages/recharge/main.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

class Pages {
  static final List<GetPage> routes = <GetPage>[
    const CarouselPage(
      name: SubScreenRouteNames.carousel,
    ).page,
    const CartPage(
      name: SubScreenRouteNames.cart,
    ).page,
    const RechargePage(
      name: SubScreenRouteNames.recharge,
    ).page,
  ];
}
