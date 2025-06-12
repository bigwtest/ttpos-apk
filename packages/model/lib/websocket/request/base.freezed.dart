// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebsocketSendMessage _$WebsocketSendMessageFromJson(Map<String, dynamic> json) {
  return _WebsocketSendMessage.fromJson(json);
}

/// @nodoc
mixin _$WebsocketSendMessage {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  set type(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg_id')
  int? get msgId => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg_id')
  set msgId(int? value) => throw _privateConstructorUsedError;

  /// 2.1 新增字段
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;

  /// 2.1 新增字段
  @JsonKey(name: 'data')
  set data(dynamic value) => throw _privateConstructorUsedError;

  /// Serializes this WebsocketSendMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebsocketSendMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebsocketSendMessageCopyWith<WebsocketSendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebsocketSendMessageCopyWith<$Res> {
  factory $WebsocketSendMessageCopyWith(WebsocketSendMessage value,
          $Res Function(WebsocketSendMessage) then) =
      _$WebsocketSendMessageCopyWithImpl<$Res, WebsocketSendMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'msg_id') int? msgId,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class _$WebsocketSendMessageCopyWithImpl<$Res,
        $Val extends WebsocketSendMessage>
    implements $WebsocketSendMessageCopyWith<$Res> {
  _$WebsocketSendMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebsocketSendMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? msgId = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      msgId: freezed == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebsocketSendMessageImplCopyWith<$Res>
    implements $WebsocketSendMessageCopyWith<$Res> {
  factory _$$WebsocketSendMessageImplCopyWith(_$WebsocketSendMessageImpl value,
          $Res Function(_$WebsocketSendMessageImpl) then) =
      __$$WebsocketSendMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'msg_id') int? msgId,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class __$$WebsocketSendMessageImplCopyWithImpl<$Res>
    extends _$WebsocketSendMessageCopyWithImpl<$Res, _$WebsocketSendMessageImpl>
    implements _$$WebsocketSendMessageImplCopyWith<$Res> {
  __$$WebsocketSendMessageImplCopyWithImpl(_$WebsocketSendMessageImpl _value,
      $Res Function(_$WebsocketSendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebsocketSendMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? msgId = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WebsocketSendMessageImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      msgId: freezed == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebsocketSendMessageImpl implements _WebsocketSendMessage {
  _$WebsocketSendMessageImpl(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'msg_id') this.msgId,
      @JsonKey(name: 'data') this.data});

  factory _$WebsocketSendMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebsocketSendMessageImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  String type;
  @override
  @JsonKey(name: 'msg_id')
  int? msgId;

  /// 2.1 新增字段
  @override
  @JsonKey(name: 'data')
  dynamic data;

  @override
  String toString() {
    return 'WebsocketSendMessage(type: $type, msgId: $msgId, data: $data)';
  }

  /// Create a copy of WebsocketSendMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebsocketSendMessageImplCopyWith<_$WebsocketSendMessageImpl>
      get copyWith =>
          __$$WebsocketSendMessageImplCopyWithImpl<_$WebsocketSendMessageImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebsocketSendMessageImplToJson(
      this,
    );
  }
}

abstract class _WebsocketSendMessage implements WebsocketSendMessage {
  factory _WebsocketSendMessage(
      {@JsonKey(name: 'type') required String type,
      @JsonKey(name: 'msg_id') int? msgId,
      @JsonKey(name: 'data') dynamic data}) = _$WebsocketSendMessageImpl;

  factory _WebsocketSendMessage.fromJson(Map<String, dynamic> json) =
      _$WebsocketSendMessageImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'type')
  set type(String value);
  @override
  @JsonKey(name: 'msg_id')
  int? get msgId;
  @JsonKey(name: 'msg_id')
  set msgId(int? value);

  /// 2.1 新增字段
  @override
  @JsonKey(name: 'data')
  dynamic get data;

  /// 2.1 新增字段
  @JsonKey(name: 'data')
  set data(dynamic value);

  /// Create a copy of WebsocketSendMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebsocketSendMessageImplCopyWith<_$WebsocketSendMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
