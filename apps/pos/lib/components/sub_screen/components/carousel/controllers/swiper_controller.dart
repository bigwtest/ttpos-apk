import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/carousel/carousel_item.dart';

class SwiperController extends GetxController {
  // 列表
  final RxList<ResponseCarouselItem> _carouselList = <ResponseCarouselItem>[].obs;
  List<ResponseCarouselItem> get carouselList => _carouselList.toList();
  set carouselList(List<ResponseCarouselItem> value) {
    // 检查两个列表是否相等
    final listEquality = ListEquality<ResponseCarouselItem>();
    bool areEqual = listEquality.equals(_carouselList, value);
    if (areEqual) return;
    //
    _carouselList.assignAll(value);
  }

  final CarouselSliderController carouselController = CarouselSliderController();

  final RxInt _swiperIndex = 0.obs;
  int get swiperIndex => _swiperIndex.value;
  set swiperIndex(int value) => _swiperIndex.value = value;
}
