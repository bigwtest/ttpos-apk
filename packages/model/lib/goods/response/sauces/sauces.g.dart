// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sauces.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsSaucesImpl _$$GoodsSaucesImplFromJson(Map<String, dynamic> json) =>
    _$GoodsSaucesImpl(
      isDefaultSelected: json['is_default_selected'] as bool,
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      price: SafetyNumber.fromJson(json['price']),
      uuid: (json['uuid'] as num).toInt(),
      stockNum: (json['stock_num'] as num).toInt(),
    );

Map<String, dynamic> _$$GoodsSaucesImplToJson(_$GoodsSaucesImpl instance) =>
    <String, dynamic>{
      'is_default_selected': instance.isDefaultSelected,
      'locale_name': instance.localeName,
      'price': instance.price,
      'uuid': instance.uuid,
      'stock_num': instance.stockNum,
    };

_$GoodsSaucesListImpl _$$GoodsSaucesListImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsSaucesListImpl(
      isMust: json['is_must'] as bool,
      list: (json['list'] as List<dynamic>)
          .map((e) => GoodsSauces.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxSelect: (json['max_select'] as num).toInt(),
    );

Map<String, dynamic> _$$GoodsSaucesListImplToJson(
        _$GoodsSaucesListImpl instance) =>
    <String, dynamic>{
      'is_must': instance.isMust,
      'list': instance.list,
      'max_select': instance.maxSelect,
    };
