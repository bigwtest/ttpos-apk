// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestGiftingProductImpl _$$RequestGiftingProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestGiftingProductImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
      reason: json['reason'] as String?,
      giftIds: (json['gift_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$RequestGiftingProductImplToJson(
        _$RequestGiftingProductImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
      'reason': instance.reason,
      'gift_ids': instance.giftIds,
    };
