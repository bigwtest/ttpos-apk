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

WebsocketReceiveMessage _$WebsocketReceiveMessageFromJson(
    Map<String, dynamic> json) {
  return _WebsocketReceiveMessage.fromJson(json);
}

/// @nodoc
mixin _$WebsocketReceiveMessage {
  @JsonKey(name: 'event')
  String get event => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  int get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg_id')
  int? get msgId => throw _privateConstructorUsedError;

  /// Serializes this WebsocketReceiveMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebsocketReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebsocketReceiveMessageCopyWith<WebsocketReceiveMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebsocketReceiveMessageCopyWith<$Res> {
  factory $WebsocketReceiveMessageCopyWith(WebsocketReceiveMessage value,
          $Res Function(WebsocketReceiveMessage) then) =
      _$WebsocketReceiveMessageCopyWithImpl<$Res, WebsocketReceiveMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'event') String event,
      @JsonKey(name: 'state') int state,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'data') Map<String, dynamic>? data,
      @JsonKey(name: 'msg_id') int? msgId});
}

/// @nodoc
class _$WebsocketReceiveMessageCopyWithImpl<$Res,
        $Val extends WebsocketReceiveMessage>
    implements $WebsocketReceiveMessageCopyWith<$Res> {
  _$WebsocketReceiveMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebsocketReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? state = null,
    Object? msg = freezed,
    Object? data = freezed,
    Object? msgId = freezed,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      msgId: freezed == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebsocketReceiveMessageImplCopyWith<$Res>
    implements $WebsocketReceiveMessageCopyWith<$Res> {
  factory _$$WebsocketReceiveMessageImplCopyWith(
          _$WebsocketReceiveMessageImpl value,
          $Res Function(_$WebsocketReceiveMessageImpl) then) =
      __$$WebsocketReceiveMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'event') String event,
      @JsonKey(name: 'state') int state,
      @JsonKey(name: 'msg') String? msg,
      @JsonKey(name: 'data') Map<String, dynamic>? data,
      @JsonKey(name: 'msg_id') int? msgId});
}

/// @nodoc
class __$$WebsocketReceiveMessageImplCopyWithImpl<$Res>
    extends _$WebsocketReceiveMessageCopyWithImpl<$Res,
        _$WebsocketReceiveMessageImpl>
    implements _$$WebsocketReceiveMessageImplCopyWith<$Res> {
  __$$WebsocketReceiveMessageImplCopyWithImpl(
      _$WebsocketReceiveMessageImpl _value,
      $Res Function(_$WebsocketReceiveMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebsocketReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? state = null,
    Object? msg = freezed,
    Object? data = freezed,
    Object? msgId = freezed,
  }) {
    return _then(_$WebsocketReceiveMessageImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      msgId: freezed == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebsocketReceiveMessageImpl implements _WebsocketReceiveMessage {
  const _$WebsocketReceiveMessageImpl(
      {@JsonKey(name: 'event') required this.event,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'msg') this.msg,
      @JsonKey(name: 'data') final Map<String, dynamic>? data,
      @JsonKey(name: 'msg_id') this.msgId})
      : _data = data;

  factory _$WebsocketReceiveMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebsocketReceiveMessageImplFromJson(json);

  @override
  @JsonKey(name: 'event')
  final String event;
  @override
  @JsonKey(name: 'state')
  final int state;
  @override
  @JsonKey(name: 'msg')
  final String? msg;
  final Map<String, dynamic>? _data;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'msg_id')
  final int? msgId;

  @override
  String toString() {
    return 'WebsocketReceiveMessage(event: $event, state: $state, msg: $msg, data: $data, msgId: $msgId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebsocketReceiveMessageImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.msgId, msgId) || other.msgId == msgId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, state, msg,
      const DeepCollectionEquality().hash(_data), msgId);

  /// Create a copy of WebsocketReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebsocketReceiveMessageImplCopyWith<_$WebsocketReceiveMessageImpl>
      get copyWith => __$$WebsocketReceiveMessageImplCopyWithImpl<
          _$WebsocketReceiveMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebsocketReceiveMessageImplToJson(
      this,
    );
  }
}

abstract class _WebsocketReceiveMessage implements WebsocketReceiveMessage {
  const factory _WebsocketReceiveMessage(
          {@JsonKey(name: 'event') required final String event,
          @JsonKey(name: 'state') required final int state,
          @JsonKey(name: 'msg') final String? msg,
          @JsonKey(name: 'data') final Map<String, dynamic>? data,
          @JsonKey(name: 'msg_id') final int? msgId}) =
      _$WebsocketReceiveMessageImpl;

  factory _WebsocketReceiveMessage.fromJson(Map<String, dynamic> json) =
      _$WebsocketReceiveMessageImpl.fromJson;

  @override
  @JsonKey(name: 'event')
  String get event;
  @override
  @JsonKey(name: 'state')
  int get state;
  @override
  @JsonKey(name: 'msg')
  String? get msg;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data;
  @override
  @JsonKey(name: 'msg_id')
  int? get msgId;

  /// Create a copy of WebsocketReceiveMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebsocketReceiveMessageImplCopyWith<_$WebsocketReceiveMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
