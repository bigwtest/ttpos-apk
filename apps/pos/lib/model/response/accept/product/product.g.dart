// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcceptProductImpl _$$AcceptProductImplFromJson(Map<String, dynamic> json) =>
    _$AcceptProductImpl(
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      totalPrice: (json['total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$AcceptProductImplToJson(_$AcceptProductImpl instance) =>
    <String, dynamic>{
      'locale_name': instance.localeName,
      'num': instance.num,
      'total_price': instance.totalPrice,
    };
