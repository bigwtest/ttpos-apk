// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/pages/carousel/binding.dart';
// Project imports:
import 'package:pos/components/sub_screen/pages/carousel/view.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

class CarouselPage {
  const CarouselPage({this.name = SubScreenRouteNames.carousel});
  final String name;

  GetPage get page => GetPage(
        name: name,
        page: () => const CarouselView(),
        bindings: [CarouselBinding()],
        transition: Transition.fadeIn,
      );
}
