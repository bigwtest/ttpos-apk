import 'package:freezed_annotation/freezed_annotation.dart';

part 'base.freezed.dart';

@freezed
abstract class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse({
    required int code,
    required String message,
    T? data,
  }) = _BaseResponse;

  const BaseResponse._(); // 添加私有构造函数

  factory BaseResponse.fromJson(
    Map<String, dynamic> json, [
    T Function(Object? json)? fromJsonT,
  ]) {
    return BaseResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : (fromJsonT ?? _defaultFromJsonT)(json['data']),
    );
  }

  static T _defaultFromJsonT<T>(Object? json) => json as T;
  static Object? _defaultToJsonT<T>(T value) => value;

  Map<String, dynamic> toJson([Object? Function(T value)? toJsonT]) {
    return {
      'code': code,
      'message': message,
      if (data != null) 'data': (toJsonT ?? _defaultToJsonT)(data as T),
    };
  }
}
