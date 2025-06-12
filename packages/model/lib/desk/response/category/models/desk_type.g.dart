// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desk_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeskTypeImpl _$$DeskTypeImplFromJson(Map<String, dynamic> json) =>
    _$DeskTypeImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => DeskTypeItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeskTypeImplToJson(_$DeskTypeImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
