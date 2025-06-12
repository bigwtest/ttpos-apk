part of '../main_controller.dart';

mixin BaseInfoCurrency on GetxController {
  Rx<BaseInfo?> get data;
  Currency? get currency => data.value?.currency;
}
