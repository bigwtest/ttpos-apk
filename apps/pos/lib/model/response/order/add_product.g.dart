// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseOrderAddProductImpl _$$ResponseOrderAddProductImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrderAddProductImpl(
      responseCart: json['response_cart'] == null
          ? null
          : ResponseCart.fromJson(
              json['response_cart'] as Map<String, dynamic>),
      productDelete: json['product_delete'] == null
          ? null
          : ResponseOrderProductDelete.fromJson(
              json['product_delete'] as Map<String, dynamic>),
      productSkuDelete: json['product_sku_delete'] == null
          ? null
          : ResponseOrderProductSkuDelete.fromJson(
              json['product_sku_delete'] as Map<String, dynamic>),
      productFeedDelete: json['product_feed_delete'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ResponseOrderAddProductImplToJson(
        _$ResponseOrderAddProductImpl instance) =>
    <String, dynamic>{
      'response_cart': instance.responseCart,
      'product_delete': instance.productDelete,
      'product_sku_delete': instance.productSkuDelete,
      'product_feed_delete': instance.productFeedDelete,
    };

_$ResponseOrderProductDeleteImpl _$$ResponseOrderProductDeleteImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrderProductDeleteImpl(
      productId: (json['product_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResponseOrderProductDeleteImplToJson(
        _$ResponseOrderProductDeleteImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
    };

_$ResponseOrderProductSkuDeleteImpl
    _$$ResponseOrderProductSkuDeleteImplFromJson(Map<String, dynamic> json) =>
        _$ResponseOrderProductSkuDeleteImpl(
          productSkuId: (json['product_sku_id'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ResponseOrderProductSkuDeleteImplToJson(
        _$ResponseOrderProductSkuDeleteImpl instance) =>
    <String, dynamic>{
      'product_sku_id': instance.productSkuId,
    };
