// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_order_reverse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderReverse _$RequestOrderReverseFromJson(Map<String, dynamic> json) {
  return _RequestOrderReverse.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderReverse {
  @JsonKey(name: "desk_uuid")
  int? get deskUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "hide_order")
  bool? get hideOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderReverse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderReverse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderReverseCopyWith<RequestOrderReverse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderReverseCopyWith<$Res> {
  factory $RequestOrderReverseCopyWith(
          RequestOrderReverse value, $Res Function(RequestOrderReverse) then) =
      _$RequestOrderReverseCopyWithImpl<$Res, RequestOrderReverse>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int? deskUuid,
      @JsonKey(name: "hide_order") bool? hideOrder,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid});
}

/// @nodoc
class _$RequestOrderReverseCopyWithImpl<$Res, $Val extends RequestOrderReverse>
    implements $RequestOrderReverseCopyWith<$Res> {
  _$RequestOrderReverseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderReverse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = freezed,
    Object? hideOrder = freezed,
    Object? saleBillUuid = null,
  }) {
    return _then(_value.copyWith(
      deskUuid: freezed == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      hideOrder: freezed == hideOrder
          ? _value.hideOrder
          : hideOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderReverseImplCopyWith<$Res>
    implements $RequestOrderReverseCopyWith<$Res> {
  factory _$$RequestOrderReverseImplCopyWith(_$RequestOrderReverseImpl value,
          $Res Function(_$RequestOrderReverseImpl) then) =
      __$$RequestOrderReverseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int? deskUuid,
      @JsonKey(name: "hide_order") bool? hideOrder,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid});
}

/// @nodoc
class __$$RequestOrderReverseImplCopyWithImpl<$Res>
    extends _$RequestOrderReverseCopyWithImpl<$Res, _$RequestOrderReverseImpl>
    implements _$$RequestOrderReverseImplCopyWith<$Res> {
  __$$RequestOrderReverseImplCopyWithImpl(_$RequestOrderReverseImpl _value,
      $Res Function(_$RequestOrderReverseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderReverse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = freezed,
    Object? hideOrder = freezed,
    Object? saleBillUuid = null,
  }) {
    return _then(_$RequestOrderReverseImpl(
      deskUuid: freezed == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      hideOrder: freezed == hideOrder
          ? _value.hideOrder
          : hideOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderReverseImpl implements _RequestOrderReverse {
  _$RequestOrderReverseImpl(
      {@JsonKey(name: "desk_uuid") this.deskUuid,
      @JsonKey(name: "hide_order") this.hideOrder,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid});

  factory _$RequestOrderReverseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderReverseImplFromJson(json);

  @override
  @JsonKey(name: "desk_uuid")
  final int? deskUuid;
  @override
  @JsonKey(name: "hide_order")
  final bool? hideOrder;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;

  @override
  String toString() {
    return 'RequestOrderReverse(deskUuid: $deskUuid, hideOrder: $hideOrder, saleBillUuid: $saleBillUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderReverseImpl &&
            (identical(other.deskUuid, deskUuid) ||
                other.deskUuid == deskUuid) &&
            (identical(other.hideOrder, hideOrder) ||
                other.hideOrder == hideOrder) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deskUuid, hideOrder, saleBillUuid);

  /// Create a copy of RequestOrderReverse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderReverseImplCopyWith<_$RequestOrderReverseImpl> get copyWith =>
      __$$RequestOrderReverseImplCopyWithImpl<_$RequestOrderReverseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderReverseImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderReverse implements RequestOrderReverse {
  factory _RequestOrderReverse(
          {@JsonKey(name: "desk_uuid") final int? deskUuid,
          @JsonKey(name: "hide_order") final bool? hideOrder,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid}) =
      _$RequestOrderReverseImpl;

  factory _RequestOrderReverse.fromJson(Map<String, dynamic> json) =
      _$RequestOrderReverseImpl.fromJson;

  @override
  @JsonKey(name: "desk_uuid")
  int? get deskUuid;
  @override
  @JsonKey(name: "hide_order")
  bool? get hideOrder;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;

  /// Create a copy of RequestOrderReverse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderReverseImplCopyWith<_$RequestOrderReverseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
