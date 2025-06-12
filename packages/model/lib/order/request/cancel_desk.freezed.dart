// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_desk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestCancelDesk _$RequestCancelDeskFromJson(Map<String, dynamic> json) {
  return _RequestCancelDesk.fromJson(json);
}

/// @nodoc
mixin _$RequestCancelDesk {
// 销售账单UUID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "cancel_reason")
  String get cancelReason => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this RequestCancelDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestCancelDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCancelDeskCopyWith<RequestCancelDesk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCancelDeskCopyWith<$Res> {
  factory $RequestCancelDeskCopyWith(
          RequestCancelDesk value, $Res Function(RequestCancelDesk) then) =
      _$RequestCancelDeskCopyWithImpl<$Res, RequestCancelDesk>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "cancel_reason") String cancelReason,
      @JsonKey(name: "password") String? password});
}

/// @nodoc
class _$RequestCancelDeskCopyWithImpl<$Res, $Val extends RequestCancelDesk>
    implements $RequestCancelDeskCopyWith<$Res> {
  _$RequestCancelDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCancelDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? cancelReason = null,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCancelDeskImplCopyWith<$Res>
    implements $RequestCancelDeskCopyWith<$Res> {
  factory _$$RequestCancelDeskImplCopyWith(_$RequestCancelDeskImpl value,
          $Res Function(_$RequestCancelDeskImpl) then) =
      __$$RequestCancelDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "cancel_reason") String cancelReason,
      @JsonKey(name: "password") String? password});
}

/// @nodoc
class __$$RequestCancelDeskImplCopyWithImpl<$Res>
    extends _$RequestCancelDeskCopyWithImpl<$Res, _$RequestCancelDeskImpl>
    implements _$$RequestCancelDeskImplCopyWith<$Res> {
  __$$RequestCancelDeskImplCopyWithImpl(_$RequestCancelDeskImpl _value,
      $Res Function(_$RequestCancelDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCancelDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? cancelReason = null,
    Object? password = freezed,
  }) {
    return _then(_$RequestCancelDeskImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCancelDeskImpl implements _RequestCancelDesk {
  _$RequestCancelDeskImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "cancel_reason") required this.cancelReason,
      @JsonKey(name: "password") this.password});

  factory _$RequestCancelDeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCancelDeskImplFromJson(json);

// 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "cancel_reason")
  final String cancelReason;
  @override
  @JsonKey(name: "password")
  final String? password;

  @override
  String toString() {
    return 'RequestCancelDesk(saleBillUuid: $saleBillUuid, cancelReason: $cancelReason, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCancelDeskImpl &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, saleBillUuid, cancelReason, password);

  /// Create a copy of RequestCancelDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelDeskImplCopyWith<_$RequestCancelDeskImpl> get copyWith =>
      __$$RequestCancelDeskImplCopyWithImpl<_$RequestCancelDeskImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCancelDeskImplToJson(
      this,
    );
  }
}

abstract class _RequestCancelDesk implements RequestCancelDesk {
  factory _RequestCancelDesk(
          {@JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "cancel_reason") required final String cancelReason,
          @JsonKey(name: "password") final String? password}) =
      _$RequestCancelDeskImpl;

  factory _RequestCancelDesk.fromJson(Map<String, dynamic> json) =
      _$RequestCancelDeskImpl.fromJson;

// 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "cancel_reason")
  String get cancelReason;
  @override
  @JsonKey(name: "password")
  String? get password;

  /// Create a copy of RequestCancelDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCancelDeskImplCopyWith<_$RequestCancelDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
