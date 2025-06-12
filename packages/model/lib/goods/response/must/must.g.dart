// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsMustImpl _$$GoodsMustImplFromJson(Map<String, dynamic> json) =>
    _$GoodsMustImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => MustGoodsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shopCartInfo: json['shop_cart_info'] == null
          ? null
          : GoodsMustOrderInfo.fromJson(
              json['shop_cart_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GoodsMustImplToJson(_$GoodsMustImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'shop_cart_info': instance.shopCartInfo,
    };
