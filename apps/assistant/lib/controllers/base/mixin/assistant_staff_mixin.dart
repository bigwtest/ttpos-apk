part of '../main_controller.dart';

mixin BaseInfoAssistantStaff on GetxController {
  Rx<BaseInfo?> get data;

  String get assistantRealName => data.value?.assistantStaff.realName ?? '';
  String get cashierRealName => data.value?.cashierStaff.realName ?? '';
}
