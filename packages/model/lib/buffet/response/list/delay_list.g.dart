// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delay_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuffetDelayListImpl _$$BuffetDelayListImplFromJson(
        Map<String, dynamic> json) =>
    _$BuffetDelayListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => BuffetDelay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BuffetDelayListImplToJson(
        _$BuffetDelayListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$BuffetDelayImpl _$$BuffetDelayImplFromJson(Map<String, dynamic> json) =>
    _$BuffetDelayImpl(
      uuid: (json['uuid'] as num).toInt(),
      name: json['name'] as String,
      price: SafetyNumber.fromJson(json['price']),
    );

Map<String, dynamic> _$$BuffetDelayImplToJson(_$BuffetDelayImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'price': instance.price,
    };
