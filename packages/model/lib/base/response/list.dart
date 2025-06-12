import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/meta.dart';

part 'list.freezed.dart';

@unfreezed
abstract class BaseList<T> with _$BaseList<T> {
  factory BaseList({
    required List<T> list,
    BaseListMeta? meta,
  }) = _BaseList<T>;

  const BaseList._(); // 添加私有构造函数

  factory BaseList.fromJson(
    Map<String, dynamic> json, [
    T Function(Object? json)? fromJsonT,
  ]) {
    return BaseList(
      list: json['list'] == null
          ? []
          : (json['list'] as List<dynamic>).map((e) => (fromJsonT ?? _defaultFromJsonT)(e)).toList(),
      meta: json['meta'] == null ? null : BaseListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );
  }

  static T _defaultFromJsonT<T>(Object? json) => json as T;
  static Object? _defaultToJsonT<T>(T value) => value;

  Map<String, dynamic> toJson([Object? Function(T value)? toJsonT]) {
    return {
      'list': list.map((e) => (toJsonT ?? _defaultToJsonT)(e)).toList(),
      if (meta != null) 'meta': meta!.toJson(),
    };
  }
}
