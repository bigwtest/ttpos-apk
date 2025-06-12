// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCartProductImpl _$$ResponseCartProductImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCartProductImpl(
      uuid: (json['uuid'] as num).toInt(),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      localeAttributeName: LocaleName.fromJson(
          json['locale_attribute_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      finishedNum: (json['finished_num'] as num?)?.toInt(),
      price: SafetyNumber.fromJson(json['price']),
      unitPrice: SafetyNumber.fromJson(json['unit_price']),
      discountPrice: SafetyNumber.fromJson(json['discount_price']),
      status: (json['status'] as num).toInt(),
      remark: json['remark'] as String,
      isMust: json['is_must'] as bool,
      isGift: json['is_gift'] as bool,
      isCancel: json['is_cancel'] as bool,
      isBuffet: json['is_buffet'] as bool,
      isShowKitchen: (json['is_show_kitchen'] as num?)?.toInt() ?? 0,
      aboutBuffet: ResponseCartAboutBuffet.fromJson(
          json['about_buffet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseCartProductImplToJson(
        _$ResponseCartProductImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'locale_name': instance.localeName,
      'locale_attribute_name': instance.localeAttributeName,
      'num': instance.num,
      'finished_num': instance.finishedNum,
      'price': instance.price,
      'unit_price': instance.unitPrice,
      'discount_price': instance.discountPrice,
      'status': instance.status,
      'remark': instance.remark,
      'is_must': instance.isMust,
      'is_gift': instance.isGift,
      'is_cancel': instance.isCancel,
      'is_buffet': instance.isBuffet,
      'is_show_kitchen': instance.isShowKitchen,
      'about_buffet': instance.aboutBuffet,
    };
