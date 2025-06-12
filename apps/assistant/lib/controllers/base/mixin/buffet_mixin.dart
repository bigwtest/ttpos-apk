part of '../main_controller.dart';

mixin BaseInfoBuffet on GetxController {
  Rx<BaseInfo?> get data;
  Buffet? get buffet => data.value?.buffet;
}
