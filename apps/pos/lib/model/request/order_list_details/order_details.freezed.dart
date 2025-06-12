// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderDetails _$RequestOrderDetailsFromJson(Map<String, dynamic> json) {
  return _RequestOrderDetails.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderDetails {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int? get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderDetailsCopyWith<RequestOrderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderDetailsCopyWith<$Res> {
  factory $RequestOrderDetailsCopyWith(
          RequestOrderDetails value, $Res Function(RequestOrderDetails) then) =
      _$RequestOrderDetailsCopyWithImpl<$Res, RequestOrderDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int? saleOrderUuid});
}

/// @nodoc
class _$RequestOrderDetailsCopyWithImpl<$Res, $Val extends RequestOrderDetails>
    implements $RequestOrderDetailsCopyWith<$Res> {
  _$RequestOrderDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: freezed == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderDetailsImplCopyWith<$Res>
    implements $RequestOrderDetailsCopyWith<$Res> {
  factory _$$RequestOrderDetailsImplCopyWith(_$RequestOrderDetailsImpl value,
          $Res Function(_$RequestOrderDetailsImpl) then) =
      __$$RequestOrderDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int? saleOrderUuid});
}

/// @nodoc
class __$$RequestOrderDetailsImplCopyWithImpl<$Res>
    extends _$RequestOrderDetailsCopyWithImpl<$Res, _$RequestOrderDetailsImpl>
    implements _$$RequestOrderDetailsImplCopyWith<$Res> {
  __$$RequestOrderDetailsImplCopyWithImpl(_$RequestOrderDetailsImpl _value,
      $Res Function(_$RequestOrderDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = freezed,
  }) {
    return _then(_$RequestOrderDetailsImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: freezed == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderDetailsImpl implements _RequestOrderDetails {
  _$RequestOrderDetailsImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") this.saleOrderUuid = 0});

  factory _$RequestOrderDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderDetailsImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int? saleOrderUuid;

  @override
  String toString() {
    return 'RequestOrderDetails(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  /// Create a copy of RequestOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderDetailsImplCopyWith<_$RequestOrderDetailsImpl> get copyWith =>
      __$$RequestOrderDetailsImplCopyWithImpl<_$RequestOrderDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderDetailsImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderDetails implements RequestOrderDetails {
  factory _RequestOrderDetails(
          {@JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") int? saleOrderUuid}) =
      _$RequestOrderDetailsImpl;

  factory _RequestOrderDetails.fromJson(Map<String, dynamic> json) =
      _$RequestOrderDetailsImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value);
  @override
  @JsonKey(name: "sale_order_uuid")
  int? get saleOrderUuid;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int? value);

  /// Create a copy of RequestOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderDetailsImplCopyWith<_$RequestOrderDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
