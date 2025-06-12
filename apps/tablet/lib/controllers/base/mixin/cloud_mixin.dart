part of '../main_controller.dart';

mixin BaseInfoCloud on GetxController {
  Rx<BaseInfo?> get data;
  Cloud? get cloud => data.value?.cloud;
}
