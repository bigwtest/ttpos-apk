// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_desk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestChangeDesk _$RequestChangeDeskFromJson(Map<String, dynamic> json) {
  return _RequestChangeDesk.fromJson(json);
}

/// @nodoc
mixin _$RequestChangeDesk {
// 桌台UUID列表
  @JsonKey(name: "desk_uuid")
  int get deskUuid => throw _privateConstructorUsedError; // 销售账单UUID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestChangeDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestChangeDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestChangeDeskCopyWith<RequestChangeDesk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestChangeDeskCopyWith<$Res> {
  factory $RequestChangeDeskCopyWith(
          RequestChangeDesk value, $Res Function(RequestChangeDesk) then) =
      _$RequestChangeDeskCopyWithImpl<$Res, RequestChangeDesk>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestChangeDeskCopyWithImpl<$Res, $Val extends RequestChangeDesk>
    implements $RequestChangeDeskCopyWith<$Res> {
  _$RequestChangeDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestChangeDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestChangeDeskImplCopyWith<$Res>
    implements $RequestChangeDeskCopyWith<$Res> {
  factory _$$RequestChangeDeskImplCopyWith(_$RequestChangeDeskImpl value,
          $Res Function(_$RequestChangeDeskImpl) then) =
      __$$RequestChangeDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestChangeDeskImplCopyWithImpl<$Res>
    extends _$RequestChangeDeskCopyWithImpl<$Res, _$RequestChangeDeskImpl>
    implements _$$RequestChangeDeskImplCopyWith<$Res> {
  __$$RequestChangeDeskImplCopyWithImpl(_$RequestChangeDeskImpl _value,
      $Res Function(_$RequestChangeDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestChangeDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestChangeDeskImpl(
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestChangeDeskImpl implements _RequestChangeDesk {
  _$RequestChangeDeskImpl(
      {@JsonKey(name: "desk_uuid") required this.deskUuid,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestChangeDeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestChangeDeskImplFromJson(json);

// 桌台UUID列表
  @override
  @JsonKey(name: "desk_uuid")
  final int deskUuid;
// 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
// 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestChangeDesk(deskUuid: $deskUuid, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestChangeDeskImpl &&
            (identical(other.deskUuid, deskUuid) ||
                other.deskUuid == deskUuid) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deskUuid, saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestChangeDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestChangeDeskImplCopyWith<_$RequestChangeDeskImpl> get copyWith =>
      __$$RequestChangeDeskImplCopyWithImpl<_$RequestChangeDeskImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestChangeDeskImplToJson(
      this,
    );
  }
}

abstract class _RequestChangeDesk implements RequestChangeDesk {
  factory _RequestChangeDesk(
          {@JsonKey(name: "desk_uuid") required final int deskUuid,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$RequestChangeDeskImpl;

  factory _RequestChangeDesk.fromJson(Map<String, dynamic> json) =
      _$RequestChangeDeskImpl.fromJson;

// 桌台UUID列表
  @override
  @JsonKey(name: "desk_uuid")
  int get deskUuid; // 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestChangeDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestChangeDeskImplCopyWith<_$RequestChangeDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
