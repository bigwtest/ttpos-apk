import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/base/response/list.dart';

class NestedBaseListConverter<T> implements JsonConverter<BaseList<T>, Map<String, dynamic>> {
  final T Function(Map<String, dynamic>) _fromJson;

  const NestedBaseListConverter(this._fromJson);

  @override
  BaseList<T> fromJson(Map<String, dynamic> json) {
    return BaseList<T>.fromJson(
      json,
      (itemJson) {
        // 处理嵌套的情况，递归转换所有层级
        if (itemJson is Map<String, dynamic>) {
          return _fromJson(itemJson);
        }
        throw Exception('Invalid JSON format for BaseList item');
      },
    );
  }

  @override
  Map<String, dynamic> toJson(BaseList<T> baseList) {
    return {
      'list': baseList.list.map((item) => (item as dynamic).toJson()).toList(),
      if (baseList.meta != null) 'meta': baseList.meta!.toJson(),
    };
  }
}
