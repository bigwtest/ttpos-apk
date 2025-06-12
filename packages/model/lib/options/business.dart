import 'package:freezed_annotation/freezed_annotation.dart';

part 'business.freezed.dart';
part 'business.g.dart';

///门店业务设置
///
///setting.Business
@freezed
class Business with _$Business {
  const factory Business({
    @JsonKey(name: "checkout_zeroing_method") required String checkoutZeroingMethod,
    @JsonKey(name: "checkout_zeroing_method_list")
    required List<SettingCheckoutZeroingMethodItem> checkoutZeroingMethodList,
    @JsonKey(name: "discount_method") required String discountMethod,
    @JsonKey(name: "dish_card_style") required String dishCardStyle,
    @JsonKey(name: "dish_card_style_time") required String dishCardStyleTime,
    @JsonKey(name: "free_method") required String freeMethod,
    @JsonKey(name: "free_method_list") required List<SettingFreeMethodItem> freeMethodList,
    @JsonKey(name: "gift_method") required String giftMethod,
    @JsonKey(name: "gift_method_list") required List<SettingGiftMethodItem> giftMethodList,
    @JsonKey(name: "is_invoice") required String isInvoice,
    @JsonKey(name: "is_need_password") required String isNeedPassword,
    @JsonKey(name: "no_clear_table") required String noClearTable,
    @JsonKey(name: "qr_code") required String qrCode,
    @JsonKey(name: "zeroing_method") required String zeroingMethod,
    @JsonKey(name: "zeroing_method_list") required List<SettingZeroingMethodItem> zeroingMethodList,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) => _$BusinessFromJson(json);

  static Business empty() => Business(
        checkoutZeroingMethod: '',
        checkoutZeroingMethodList: [],
        discountMethod: '',
        dishCardStyle: '',
        dishCardStyleTime: '',
        freeMethod: '',
        freeMethodList: [],
        giftMethod: '',
        giftMethodList: [],
        isInvoice: '',
        isNeedPassword: '',
        noClearTable: '',
        qrCode: '',
        zeroingMethod: '',
        zeroingMethodList: [],
      );
}

///setting.CheckoutZeroingMethodItem
@freezed
class SettingCheckoutZeroingMethodItem with _$SettingCheckoutZeroingMethodItem {
  const factory SettingCheckoutZeroingMethodItem({
    @JsonKey(name: "key") required String key,
    @JsonKey(name: "name") required String name,
  }) = _SettingCheckoutZeroingMethodItem;

  factory SettingCheckoutZeroingMethodItem.fromJson(Map<String, dynamic> json) =>
      _$SettingCheckoutZeroingMethodItemFromJson(json);
}

///setting.FreeMethodItem
@freezed
class SettingFreeMethodItem with _$SettingFreeMethodItem {
  const factory SettingFreeMethodItem({
    @JsonKey(name: "key") required String key,
    @JsonKey(name: "name") required String name,
  }) = _SettingFreeMethodItem;

  factory SettingFreeMethodItem.fromJson(Map<String, dynamic> json) => _$SettingFreeMethodItemFromJson(json);
}

///setting.GiftMethodItem
@freezed
class SettingGiftMethodItem with _$SettingGiftMethodItem {
  const factory SettingGiftMethodItem({
    @JsonKey(name: "key") required String key,
    @JsonKey(name: "name") required String name,
  }) = _SettingGiftMethodItem;

  factory SettingGiftMethodItem.fromJson(Map<String, dynamic> json) => _$SettingGiftMethodItemFromJson(json);
}

///setting.ZeroingMethodItem
@freezed
class SettingZeroingMethodItem with _$SettingZeroingMethodItem {
  const factory SettingZeroingMethodItem({
    @JsonKey(name: "key") required String key,
    @JsonKey(name: "name") required String name,
  }) = _SettingZeroingMethodItem;

  factory SettingZeroingMethodItem.fromJson(Map<String, dynamic> json) => _$SettingZeroingMethodItemFromJson(json);
}
