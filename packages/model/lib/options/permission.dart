import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission.freezed.dart';
part 'permission.g.dart';

///resp.Permission
@freezed
class Permission with _$Permission {
  const factory Permission({
    @JsonKey(name: "alias") required String alias,
    @JsonKey(name: "children") required List<Permission> children,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "is_menu") required int isMenu,
    @JsonKey(name: "is_route") required int isRoute,
    @JsonKey(name: "is_show") required int isShow,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "parent_id") required int parentId,
    @JsonKey(name: "path") required String path,
    @JsonKey(name: "redirect_name") required String redirectName,
    @JsonKey(name: "uuid") required int uuid,
  }) = _Permission;

  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);
}
