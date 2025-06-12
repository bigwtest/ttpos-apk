// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderMoveProductImpl _$$RequestOrderMoveProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderMoveProductImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      from: (json['from'] as num).toInt(),
      to: (json['to'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) =>
              RequestOrderMoveProducts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestOrderMoveProductImplToJson(
        _$RequestOrderMoveProductImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'from': instance.from,
      'to': instance.to,
      'products': instance.products,
    };

_$RequestOrderMoveProductsImpl _$$RequestOrderMoveProductsImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderMoveProductsImpl(
      num: (json['num'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderMoveProductsImplToJson(
        _$RequestOrderMoveProductsImpl instance) =>
    <String, dynamic>{
      'num': instance.num,
      'uuid': instance.uuid,
    };
