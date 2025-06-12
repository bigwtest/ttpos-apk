part of '../main_controller.dart';

mixin BaseInfoBusiness on GetxController {
  Rx<BaseInfo?> get data;
  Business? get business => data.value?.business;

  String get discountType => (data.value?.business.discountMethod ?? '10');
  String get discountTypeText => (data.value?.business.discountMethod ?? '10') == '10' ? '%' : '% OFF';
}
