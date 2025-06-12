// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PermissionImpl _$$PermissionImplFromJson(Map<String, dynamic> json) =>
    _$PermissionImpl(
      alias: json['alias'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => Permission.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num).toInt(),
      isMenu: (json['is_menu'] as num).toInt(),
      isRoute: (json['is_route'] as num).toInt(),
      isShow: (json['is_show'] as num).toInt(),
      name: json['name'] as String,
      parentId: (json['parent_id'] as num).toInt(),
      path: json['path'] as String,
      redirectName: json['redirect_name'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$PermissionImplToJson(_$PermissionImpl instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'children': instance.children,
      'id': instance.id,
      'is_menu': instance.isMenu,
      'is_route': instance.isRoute,
      'is_show': instance.isShow,
      'name': instance.name,
      'parent_id': instance.parentId,
      'path': instance.path,
      'redirect_name': instance.redirectName,
      'uuid': instance.uuid,
    };
