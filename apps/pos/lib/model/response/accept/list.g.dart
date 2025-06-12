// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcceptListImpl _$$AcceptListImplFromJson(Map<String, dynamic> json) =>
    _$AcceptListImpl(
      extra: Extra.fromJson(json['extra'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => AcceptOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: BaseListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AcceptListImplToJson(_$AcceptListImpl instance) =>
    <String, dynamic>{
      'extra': instance.extra,
      'list': instance.list,
      'meta': instance.meta,
    };

_$ExtraImpl _$$ExtraImplFromJson(Map<String, dynamic> json) => _$ExtraImpl(
      handledCount: (json['handled_count'] as num).toInt(),
      unhandledCount: (json['unhandled_count'] as num).toInt(),
    );

Map<String, dynamic> _$$ExtraImplToJson(_$ExtraImpl instance) =>
    <String, dynamic>{
      'handled_count': instance.handledCount,
      'unhandled_count': instance.unhandledCount,
    };
