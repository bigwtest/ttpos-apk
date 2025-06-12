// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_top_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseTopUpImpl _$$ResponseTopUpImplFromJson(Map<String, dynamic> json) =>
    _$ResponseTopUpImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => RespRechargeOrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseTopUpImplToJson(_$ResponseTopUpImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'meta': instance.meta,
    };
