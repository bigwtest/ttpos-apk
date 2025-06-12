// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessImpl _$$BusinessImplFromJson(Map<String, dynamic> json) =>
    _$BusinessImpl(
      checkoutZeroingMethod: json['checkout_zeroing_method'] as String,
      checkoutZeroingMethodList:
          (json['checkout_zeroing_method_list'] as List<dynamic>)
              .map((e) => SettingCheckoutZeroingMethodItem.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      discountMethod: json['discount_method'] as String,
      dishCardStyle: json['dish_card_style'] as String,
      dishCardStyleTime: json['dish_card_style_time'] as String,
      freeMethod: json['free_method'] as String,
      freeMethodList: (json['free_method_list'] as List<dynamic>)
          .map((e) => SettingFreeMethodItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      giftMethod: json['gift_method'] as String,
      giftMethodList: (json['gift_method_list'] as List<dynamic>)
          .map((e) => SettingGiftMethodItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isInvoice: json['is_invoice'] as String,
      isNeedPassword: json['is_need_password'] as String,
      noClearTable: json['no_clear_table'] as String,
      qrCode: json['qr_code'] as String,
      zeroingMethod: json['zeroing_method'] as String,
      zeroingMethodList: (json['zeroing_method_list'] as List<dynamic>)
          .map((e) =>
              SettingZeroingMethodItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BusinessImplToJson(_$BusinessImpl instance) =>
    <String, dynamic>{
      'checkout_zeroing_method': instance.checkoutZeroingMethod,
      'checkout_zeroing_method_list': instance.checkoutZeroingMethodList,
      'discount_method': instance.discountMethod,
      'dish_card_style': instance.dishCardStyle,
      'dish_card_style_time': instance.dishCardStyleTime,
      'free_method': instance.freeMethod,
      'free_method_list': instance.freeMethodList,
      'gift_method': instance.giftMethod,
      'gift_method_list': instance.giftMethodList,
      'is_invoice': instance.isInvoice,
      'is_need_password': instance.isNeedPassword,
      'no_clear_table': instance.noClearTable,
      'qr_code': instance.qrCode,
      'zeroing_method': instance.zeroingMethod,
      'zeroing_method_list': instance.zeroingMethodList,
    };

_$SettingCheckoutZeroingMethodItemImpl
    _$$SettingCheckoutZeroingMethodItemImplFromJson(
            Map<String, dynamic> json) =>
        _$SettingCheckoutZeroingMethodItemImpl(
          key: json['key'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$$SettingCheckoutZeroingMethodItemImplToJson(
        _$SettingCheckoutZeroingMethodItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
    };

_$SettingFreeMethodItemImpl _$$SettingFreeMethodItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingFreeMethodItemImpl(
      key: json['key'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SettingFreeMethodItemImplToJson(
        _$SettingFreeMethodItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
    };

_$SettingGiftMethodItemImpl _$$SettingGiftMethodItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingGiftMethodItemImpl(
      key: json['key'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SettingGiftMethodItemImplToJson(
        _$SettingGiftMethodItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
    };

_$SettingZeroingMethodItemImpl _$$SettingZeroingMethodItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingZeroingMethodItemImpl(
      key: json['key'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SettingZeroingMethodItemImplToJson(
        _$SettingZeroingMethodItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
    };
