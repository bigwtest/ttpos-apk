// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_desk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestFreeDesk _$RequestFreeDeskFromJson(Map<String, dynamic> json) {
  return _RequestFreeDesk.fromJson(json);
}

/// @nodoc
mixin _$RequestFreeDesk {
// 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError; // 免单标签ids
  @JsonKey(name: "reason_ids")
  List<int> get reasonIds => throw _privateConstructorUsedError; // 免单原因
  @JsonKey(name: "reason")
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this RequestFreeDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestFreeDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestFreeDeskCopyWith<RequestFreeDesk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFreeDeskCopyWith<$Res> {
  factory $RequestFreeDeskCopyWith(
          RequestFreeDesk value, $Res Function(RequestFreeDesk) then) =
      _$RequestFreeDeskCopyWithImpl<$Res, RequestFreeDesk>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "reason_ids") List<int> reasonIds,
      @JsonKey(name: "reason") String reason});
}

/// @nodoc
class _$RequestFreeDeskCopyWithImpl<$Res, $Val extends RequestFreeDesk>
    implements $RequestFreeDeskCopyWith<$Res> {
  _$RequestFreeDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestFreeDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? reasonIds = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      reasonIds: null == reasonIds
          ? _value.reasonIds
          : reasonIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestFreeDeskImplCopyWith<$Res>
    implements $RequestFreeDeskCopyWith<$Res> {
  factory _$$RequestFreeDeskImplCopyWith(_$RequestFreeDeskImpl value,
          $Res Function(_$RequestFreeDeskImpl) then) =
      __$$RequestFreeDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "reason_ids") List<int> reasonIds,
      @JsonKey(name: "reason") String reason});
}

/// @nodoc
class __$$RequestFreeDeskImplCopyWithImpl<$Res>
    extends _$RequestFreeDeskCopyWithImpl<$Res, _$RequestFreeDeskImpl>
    implements _$$RequestFreeDeskImplCopyWith<$Res> {
  __$$RequestFreeDeskImplCopyWithImpl(
      _$RequestFreeDeskImpl _value, $Res Function(_$RequestFreeDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestFreeDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? reasonIds = null,
    Object? reason = null,
  }) {
    return _then(_$RequestFreeDeskImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      reasonIds: null == reasonIds
          ? _value._reasonIds
          : reasonIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestFreeDeskImpl implements _RequestFreeDesk {
  _$RequestFreeDeskImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "reason_ids") required final List<int> reasonIds,
      @JsonKey(name: "reason") required this.reason})
      : _reasonIds = reasonIds;

  factory _$RequestFreeDeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestFreeDeskImplFromJson(json);

// 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
// 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;
// 免单标签ids
  final List<int> _reasonIds;
// 免单标签ids
  @override
  @JsonKey(name: "reason_ids")
  List<int> get reasonIds {
    if (_reasonIds is EqualUnmodifiableListView) return _reasonIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reasonIds);
  }

// 免单原因
  @override
  @JsonKey(name: "reason")
  final String reason;

  @override
  String toString() {
    return 'RequestFreeDesk(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, reasonIds: $reasonIds, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFreeDeskImpl &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid) &&
            const DeepCollectionEquality()
                .equals(other._reasonIds, _reasonIds) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, saleBillUuid, saleOrderUuid,
      const DeepCollectionEquality().hash(_reasonIds), reason);

  /// Create a copy of RequestFreeDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestFreeDeskImplCopyWith<_$RequestFreeDeskImpl> get copyWith =>
      __$$RequestFreeDeskImplCopyWithImpl<_$RequestFreeDeskImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestFreeDeskImplToJson(
      this,
    );
  }
}

abstract class _RequestFreeDesk implements RequestFreeDesk {
  factory _RequestFreeDesk(
          {@JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid,
          @JsonKey(name: "reason_ids") required final List<int> reasonIds,
          @JsonKey(name: "reason") required final String reason}) =
      _$RequestFreeDeskImpl;

  factory _RequestFreeDesk.fromJson(Map<String, dynamic> json) =
      _$RequestFreeDeskImpl.fromJson;

// 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid; // 免单标签ids
  @override
  @JsonKey(name: "reason_ids")
  List<int> get reasonIds; // 免单原因
  @override
  @JsonKey(name: "reason")
  String get reason;

  /// Create a copy of RequestFreeDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestFreeDeskImplCopyWith<_$RequestFreeDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
