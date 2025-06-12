// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeskListImpl _$$DeskListImplFromJson(Map<String, dynamic> json) =>
    _$DeskListImpl(
      extra: Extra.fromJson(json['extra'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => Desk.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: BaseListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeskListImplToJson(_$DeskListImpl instance) =>
    <String, dynamic>{
      'extra': instance.extra,
      'list': instance.list,
      'meta': instance.meta,
    };

_$ExtraImpl _$$ExtraImplFromJson(Map<String, dynamic> json) => _$ExtraImpl(
      availableNum: (json['available_num'] as num).toInt(),
      lockNum: (json['lock_num'] as num).toInt(),
      occupyBuffetNum: (json['occupy_buffet_num'] as num).toInt(),
      occupyNotBuffetNum: (json['occupy_not_buffet_num'] as num).toInt(),
      occupyWaitNum: (json['occupy_wait_num'] as num).toInt(),
      totalNum: (json['total_num'] as num).toInt(),
      updateTime: (json['update_time'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ExtraImplToJson(_$ExtraImpl instance) =>
    <String, dynamic>{
      'available_num': instance.availableNum,
      'lock_num': instance.lockNum,
      'occupy_buffet_num': instance.occupyBuffetNum,
      'occupy_not_buffet_num': instance.occupyNotBuffetNum,
      'occupy_wait_num': instance.occupyWaitNum,
      'total_num': instance.totalNum,
      'update_time': instance.updateTime,
    };
