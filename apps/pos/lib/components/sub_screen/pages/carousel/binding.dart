// Package imports:
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/carousel/controllers/swiper_controller.dart';

class CarouselBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SwiperController());
  }
}
