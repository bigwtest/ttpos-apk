import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/options/buffet.dart';
import 'package:ttpos_model/options/business.dart';
import 'package:ttpos_model/options/cloud.dart';
import 'package:ttpos_model/options/company.dart';
import 'package:ttpos_model/options/currency.dart';
import 'package:ttpos_shared/shared.dart' as shared;
import 'package:ttpos_ui/components/desks/models/buffet.dart';
import 'package:ttpos_ui/theme/theme.dart';

part 'extensions/buffet.dart';
part 'extensions/currency.dart';
part 'extensions/timezone.dart';

class ConfigController extends GetxController {
  /// 自助餐信息
  final Rx<Buffet> _buffet = Buffet.empty().obs;
  bool get isEnableBuffet => int.tryParse(_buffet.value.isOpen) == 1;

  /// 业务信息
  final Rx<Business> _business = Business.empty().obs;
  Business get business => _business.value;
  bool get isInvoice => int.tryParse(_business.value.isInvoice) == 1;
  bool get isActionNeedPassword => int.tryParse(_business.value.isNeedPassword) == 1;

  /// 商家信息
  final Rx<Company> _company = Company.empty().obs;
  Company get company => _company.value;
  String get companyTimeZone => company.timeZone ?? 'Asia/Shanghai';
  String get companyLogo => company.logo ?? '';
  String get companyName => company.name;

  /// 货币信息
  final Rx<Currency> _currency = Currency.empty().obs;
  Currency get currency => _currency.value;

  /// 自助餐配置息
  final Rx<BuffetOption> _buffetOption = BuffetOption(
    isRemainBuffetCountdownColor: false,
    buffetCountdownLeft10minColor: CustomTheme.primaryColor.shade700,
    buffetCountdownLeft20minColor: CustomTheme.primaryColor.shade700,
  ).obs;

  Rx<BuffetOption> get buffetOption => _buffetOption;

  /// 云平台信息
  final Rx<Cloud> _cloud = Cloud.empty().obs;
  Cloud get cloud => _cloud.value;

  /// 品牌名称
  String get brandName => cloud.brandName ?? 'TTPOS';

  /// 品牌 logo 方形
  String? get brandLogoSquare {
    final brandLogo = cloud.brandLogo;
    if (brandLogo == null) return null;
    if (brandLogo.startsWith('http')) return brandLogo;
    return null;
  }

  /// 品牌 logo 长形
  String? get brandLogoFull {
    final brandLogo = cloud.brandLogoLong;
    if (brandLogo == null) return null;
    if (brandLogo.startsWith('http')) return brandLogo;
    return null;
  }

  /// 浏览器 logo
  String? get browserLogo {
    final browserLogo = cloud.browserLogo;
    if (browserLogo == null) return null;
    if (browserLogo.startsWith('http')) return browserLogo;
    return null;
  }

  /// 浏览器标题
  String get browserTitle => cloud.browserTitle ?? 'TTPOS';

  /// 是否显示已售罄商品
  final RxBool _isSoldOutProductVisible = true.obs;
  bool get isSoldOutProductVisible => _isSoldOutProductVisible.value;

  void setConfig({
    Buffet? buffet,
    Business? business,
    Company? company,
    Currency? currency,
    BuffetOption? buffetOption,
    Cloud? cloud,
    bool? isSoldOutProductVisible,
  }) {
    if (buffet != null) _buffet.value = buffet;
    if (business != null) _business.value = business;
    if (company != null) _company.value = company;
    if (currency != null) _currency.value = currency;
    if (buffetOption != null) _buffetOption.value = buffetOption;
    if (cloud != null) _cloud.value = cloud;
    if (isSoldOutProductVisible != null) _isSoldOutProductVisible.value = isSoldOutProductVisible;

    Get.forceAppUpdate();
  }
}
