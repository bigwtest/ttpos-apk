// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_order_cancel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderCancel _$RequestOrderCancelFromJson(Map<String, dynamic> json) {
  return _RequestOrderCancel.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderCancel {
  @JsonKey(name: "cancel_reason")
  String? get cancelReason => throw _privateConstructorUsedError;
  @JsonKey(name: "cancel_reason")
  set cancelReason(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  set password(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderCancel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderCancel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderCancelCopyWith<RequestOrderCancel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderCancelCopyWith<$Res> {
  factory $RequestOrderCancelCopyWith(
          RequestOrderCancel value, $Res Function(RequestOrderCancel) then) =
      _$RequestOrderCancelCopyWithImpl<$Res, RequestOrderCancel>;
  @useResult
  $Res call(
      {@JsonKey(name: "cancel_reason") String? cancelReason,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid});
}

/// @nodoc
class _$RequestOrderCancelCopyWithImpl<$Res, $Val extends RequestOrderCancel>
    implements $RequestOrderCancelCopyWith<$Res> {
  _$RequestOrderCancelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderCancel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancelReason = freezed,
    Object? password = freezed,
    Object? saleBillUuid = null,
  }) {
    return _then(_value.copyWith(
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderCancelImplCopyWith<$Res>
    implements $RequestOrderCancelCopyWith<$Res> {
  factory _$$RequestOrderCancelImplCopyWith(_$RequestOrderCancelImpl value,
          $Res Function(_$RequestOrderCancelImpl) then) =
      __$$RequestOrderCancelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cancel_reason") String? cancelReason,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid});
}

/// @nodoc
class __$$RequestOrderCancelImplCopyWithImpl<$Res>
    extends _$RequestOrderCancelCopyWithImpl<$Res, _$RequestOrderCancelImpl>
    implements _$$RequestOrderCancelImplCopyWith<$Res> {
  __$$RequestOrderCancelImplCopyWithImpl(_$RequestOrderCancelImpl _value,
      $Res Function(_$RequestOrderCancelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderCancel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancelReason = freezed,
    Object? password = freezed,
    Object? saleBillUuid = null,
  }) {
    return _then(_$RequestOrderCancelImpl(
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderCancelImpl
    with DiagnosticableTreeMixin
    implements _RequestOrderCancel {
  _$RequestOrderCancelImpl(
      {@JsonKey(name: "cancel_reason") this.cancelReason,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid});

  factory _$RequestOrderCancelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderCancelImplFromJson(json);

  @override
  @JsonKey(name: "cancel_reason")
  String? cancelReason;
  @override
  @JsonKey(name: "password")
  String? password;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestOrderCancel(cancelReason: $cancelReason, password: $password, saleBillUuid: $saleBillUuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestOrderCancel'))
      ..add(DiagnosticsProperty('cancelReason', cancelReason))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('saleBillUuid', saleBillUuid));
  }

  /// Create a copy of RequestOrderCancel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderCancelImplCopyWith<_$RequestOrderCancelImpl> get copyWith =>
      __$$RequestOrderCancelImplCopyWithImpl<_$RequestOrderCancelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderCancelImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderCancel implements RequestOrderCancel {
  factory _RequestOrderCancel(
          {@JsonKey(name: "cancel_reason") String? cancelReason,
          @JsonKey(name: "password") String? password,
          @JsonKey(name: "sale_bill_uuid") required int saleBillUuid}) =
      _$RequestOrderCancelImpl;

  factory _RequestOrderCancel.fromJson(Map<String, dynamic> json) =
      _$RequestOrderCancelImpl.fromJson;

  @override
  @JsonKey(name: "cancel_reason")
  String? get cancelReason;
  @JsonKey(name: "cancel_reason")
  set cancelReason(String? value);
  @override
  @JsonKey(name: "password")
  String? get password;
  @JsonKey(name: "password")
  set password(String? value);
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value);

  /// Create a copy of RequestOrderCancel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderCancelImplCopyWith<_$RequestOrderCancelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
