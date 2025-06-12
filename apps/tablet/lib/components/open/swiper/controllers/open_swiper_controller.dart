import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:tablet/controllers/base/main_controller.dart';
import 'package:tablet/model/response/auth/models/tablet.dart';

class OpenSwiperController extends GetxController {
  final RxList<Carousel> _swiperList = <Carousel>[].obs;
  List<Carousel> get swiperList => _swiperList;
  set swiperList(List<Carousel> value) => _swiperList.value = value;

  final RxInt _swiperIndex = 0.obs;
  int get swiperIndex => _swiperIndex.value;
  set swiperIndex(int value) => _swiperIndex.value = value;

  final CarouselSliderController carouselController = CarouselSliderController();

  @override
  void onReady() {
    super.onReady();

    _tryToGetSwiperList();
  }

  void _tryToGetSwiperList() {
    if (!Get.isRegistered<BaseInfoController>() && !Get.isPrepared<BaseInfoController>()) return;
    List<Carousel> result = Get.find<BaseInfoController>().carousel;
    swiperList = result;
  }
}
