// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_order_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespOrderProductImpl _$$RespOrderProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RespOrderProductImpl(
      giftReason: json['gift_reason'] as String,
      imageUrl: json['image_url'] as String,
      isBuffet: json['is_buffet'] as bool,
      isBuffetCustomer: json['is_buffet_customer'] as bool,
      isDelay: json['is_delay'] as bool,
      isGift: json['is_gift'] as bool,
      isMust: json['is_must'] as bool,
      localeAttributeName: LocaleName.fromJson(
          json['locale_attribute_name'] as Map<String, dynamic>),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      refundAmount: (json['refund_amount'] as num).toDouble(),
      refundReason: json['refund_reason'] as String,
      remark: json['remark'] as String,
      salePrice: (json['sale_price'] as num).toDouble(),
      status: (json['status'] as num).toInt(),
      totalPrice: (json['total_price'] as num).toDouble(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespOrderProductImplToJson(
        _$RespOrderProductImpl instance) =>
    <String, dynamic>{
      'gift_reason': instance.giftReason,
      'image_url': instance.imageUrl,
      'is_buffet': instance.isBuffet,
      'is_buffet_customer': instance.isBuffetCustomer,
      'is_delay': instance.isDelay,
      'is_gift': instance.isGift,
      'is_must': instance.isMust,
      'locale_attribute_name': instance.localeAttributeName,
      'locale_name': instance.localeName,
      'num': instance.num,
      'price': instance.price,
      'refund_amount': instance.refundAmount,
      'refund_reason': instance.refundReason,
      'remark': instance.remark,
      'sale_price': instance.salePrice,
      'status': instance.status,
      'total_price': instance.totalPrice,
      'uuid': instance.uuid,
    };
