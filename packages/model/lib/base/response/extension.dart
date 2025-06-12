import 'package:ttpos_model/base/response/base.dart';
import 'package:ttpos_model/base/response/list.dart';

extension JsonResponseExtension on Map<String, dynamic> {
  /// 递归处理嵌套的普通响应
  BaseResponse<T> toBaseResponse<T>(
    T Function(Map<String, dynamic> json) fromJson,
  ) {
    return BaseResponse<T>.fromJson(
      this,
      (json) {
        if (json is Map<String, dynamic>) {
          return fromJson(json);
        }
        throw Exception('Invalid JSON format');
      },
    );
  }

  /// 递归处理嵌套的列表响应
  BaseResponse<BaseList<T>> toBaseListResponse<T>(
    T Function(Map<String, dynamic> json) fromJson,
  ) {
    return BaseResponse<BaseList<T>>.fromJson(
      this,
      (json) => BaseList<T>.fromJson(
        json as Map<String, dynamic>,
        (itemJson) => fromJson(itemJson as Map<String, dynamic>),
      ),
    );
  }
}
