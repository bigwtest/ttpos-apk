// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuffetListImpl _$$BuffetListImplFromJson(Map<String, dynamic> json) =>
    _$BuffetListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => Buffet.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: BaseListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BuffetListImplToJson(_$BuffetListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'meta': instance.meta,
    };
