// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_product_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespProductStatisticsImpl _$$RespProductStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$RespProductStatisticsImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) =>
              BusinessDataRespProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RespProductStatisticsImplToJson(
        _$RespProductStatisticsImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$BusinessDataRespProductImpl _$$BusinessDataRespProductImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessDataRespProductImpl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      salesNum: (json['sales_num'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toDouble(),
    );

Map<String, dynamic> _$$BusinessDataRespProductImplToJson(
        _$BusinessDataRespProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'sales_num': instance.salesNum,
      'subtotal': instance.subtotal,
    };
