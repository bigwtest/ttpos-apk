// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsFlavorsImpl _$$GoodsFlavorsImplFromJson(Map<String, dynamic> json) =>
    _$GoodsFlavorsImpl(
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      price: SafetyNumber.fromJson(json['price']),
      uuid: (json['uuid'] as num).toInt(),
      barcode: json['barcode'] as String?,
      stockNum: (json['stock_num'] as num).toInt(),
    );

Map<String, dynamic> _$$GoodsFlavorsImplToJson(_$GoodsFlavorsImpl instance) =>
    <String, dynamic>{
      'locale_name': instance.localeName,
      'price': instance.price,
      'uuid': instance.uuid,
      'barcode': instance.barcode,
      'stock_num': instance.stockNum,
    };
