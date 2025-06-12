// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_top_up.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseTopUp _$ResponseTopUpFromJson(Map<String, dynamic> json) {
  return _ResponseTopUp.fromJson(json);
}

/// @nodoc
mixin _$ResponseTopUp {
  @JsonKey(name: "list")
  List<RespRechargeOrderItem> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  set list(List<RespRechargeOrderItem> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  Meta get meta => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  set meta(Meta value) => throw _privateConstructorUsedError;

  /// Serializes this ResponseTopUp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseTopUp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseTopUpCopyWith<ResponseTopUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseTopUpCopyWith<$Res> {
  factory $ResponseTopUpCopyWith(
          ResponseTopUp value, $Res Function(ResponseTopUp) then) =
      _$ResponseTopUpCopyWithImpl<$Res, ResponseTopUp>;
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespRechargeOrderItem> list,
      @JsonKey(name: "meta") Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ResponseTopUpCopyWithImpl<$Res, $Val extends ResponseTopUp>
    implements $ResponseTopUpCopyWith<$Res> {
  _$ResponseTopUpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseTopUp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespRechargeOrderItem>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  /// Create a copy of ResponseTopUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseTopUpImplCopyWith<$Res>
    implements $ResponseTopUpCopyWith<$Res> {
  factory _$$ResponseTopUpImplCopyWith(
          _$ResponseTopUpImpl value, $Res Function(_$ResponseTopUpImpl) then) =
      __$$ResponseTopUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespRechargeOrderItem> list,
      @JsonKey(name: "meta") Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ResponseTopUpImplCopyWithImpl<$Res>
    extends _$ResponseTopUpCopyWithImpl<$Res, _$ResponseTopUpImpl>
    implements _$$ResponseTopUpImplCopyWith<$Res> {
  __$$ResponseTopUpImplCopyWithImpl(
      _$ResponseTopUpImpl _value, $Res Function(_$ResponseTopUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseTopUp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_$ResponseTopUpImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespRechargeOrderItem>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseTopUpImpl implements _ResponseTopUp {
  _$ResponseTopUpImpl(
      {@JsonKey(name: "list") required this.list,
      @JsonKey(name: "meta") required this.meta});

  factory _$ResponseTopUpImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseTopUpImplFromJson(json);

  @override
  @JsonKey(name: "list")
  List<RespRechargeOrderItem> list;
  @override
  @JsonKey(name: "meta")
  Meta meta;

  @override
  String toString() {
    return 'ResponseTopUp(list: $list, meta: $meta)';
  }

  /// Create a copy of ResponseTopUp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseTopUpImplCopyWith<_$ResponseTopUpImpl> get copyWith =>
      __$$ResponseTopUpImplCopyWithImpl<_$ResponseTopUpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseTopUpImplToJson(
      this,
    );
  }
}

abstract class _ResponseTopUp implements ResponseTopUp {
  factory _ResponseTopUp(
      {@JsonKey(name: "list") required List<RespRechargeOrderItem> list,
      @JsonKey(name: "meta") required Meta meta}) = _$ResponseTopUpImpl;

  factory _ResponseTopUp.fromJson(Map<String, dynamic> json) =
      _$ResponseTopUpImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespRechargeOrderItem> get list;
  @JsonKey(name: "list")
  set list(List<RespRechargeOrderItem> value);
  @override
  @JsonKey(name: "meta")
  Meta get meta;
  @JsonKey(name: "meta")
  set meta(Meta value);

  /// Create a copy of ResponseTopUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseTopUpImplCopyWith<_$ResponseTopUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
