// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_order_product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsMustOrderProductListImpl _$$GoodsMustOrderProductListImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsMustOrderProductListImpl(
      aboutBuffet:
          AboutBuffet.fromJson(json['about_buffet'] as Map<String, dynamic>),
      discountPrice: (json['discount_price'] as num).toDouble(),
      isCancel: json['is_cancel'] as bool,
      isGift: json['is_gift'] as bool,
      isMust: json['is_must'] as bool,
      localeAttributeName: LocaleName.fromJson(
          json['locale_attribute_name'] as Map<String, dynamic>),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      remark: json['remark'] as String,
      status: (json['status'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$GoodsMustOrderProductListImplToJson(
        _$GoodsMustOrderProductListImpl instance) =>
    <String, dynamic>{
      'about_buffet': instance.aboutBuffet,
      'discount_price': instance.discountPrice,
      'is_cancel': instance.isCancel,
      'is_gift': instance.isGift,
      'is_must': instance.isMust,
      'locale_attribute_name': instance.localeAttributeName,
      'locale_name': instance.localeName,
      'num': instance.num,
      'price': instance.price,
      'remark': instance.remark,
      'status': instance.status,
      'uuid': instance.uuid,
    };

_$AboutBuffetImpl _$$AboutBuffetImplFromJson(Map<String, dynamic> json) =>
    _$AboutBuffetImpl(
      isCustomer: json['is_customer'] as bool,
      isDelay: json['is_delay'] as bool,
    );

Map<String, dynamic> _$$AboutBuffetImplToJson(_$AboutBuffetImpl instance) =>
    <String, dynamic>{
      'is_customer': instance.isCustomer,
      'is_delay': instance.isDelay,
    };
