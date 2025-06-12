part of '../main_controller.dart';

mixin BaseInfoBusiness on GetxController {
  Rx<BaseInfo?> get data;
  Business? get business => data.value?.business;
}
