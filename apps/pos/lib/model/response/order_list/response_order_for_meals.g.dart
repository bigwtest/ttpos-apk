// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_order_for_meals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseOrderForMealsImpl _$$ResponseOrderForMealsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseOrderForMealsImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespBillLists.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseOrderForMealsImplToJson(
        _$ResponseOrderForMealsImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'meta': instance.meta,
    };
