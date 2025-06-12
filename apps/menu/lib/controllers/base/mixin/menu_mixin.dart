part of '../main_controller.dart';

mixin BaseInfoMenu on GetxController {
  Rx<BaseInfo?> get data;

  /// 是否显示已售罄商品
  bool get isSoldOutProductVisible => data.value?.isShowSoldOut == true;
}
