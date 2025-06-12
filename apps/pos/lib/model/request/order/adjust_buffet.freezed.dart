// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adjust_buffet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderAdjustBuffet _$RequestOrderAdjustBuffetFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderAdjustBuffet.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderAdjustBuffet {
// 自助餐客户类型列表
  @JsonKey(name: 'buffet_customer_types')
  List<RequestBuffetCustomerType> get buffetCustomerTypes =>
      throw _privateConstructorUsedError; // 销售单UUID
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid => throw _privateConstructorUsedError; // 自助餐UUID列表
  @JsonKey(name: 'buffet_uuids')
  List<int> get buffetUuids => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderAdjustBuffet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderAdjustBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderAdjustBuffetCopyWith<RequestOrderAdjustBuffet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderAdjustBuffetCopyWith<$Res> {
  factory $RequestOrderAdjustBuffetCopyWith(RequestOrderAdjustBuffet value,
          $Res Function(RequestOrderAdjustBuffet) then) =
      _$RequestOrderAdjustBuffetCopyWithImpl<$Res, RequestOrderAdjustBuffet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'buffet_customer_types')
      List<RequestBuffetCustomerType> buffetCustomerTypes,
      @JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'buffet_uuids') List<int> buffetUuids});
}

/// @nodoc
class _$RequestOrderAdjustBuffetCopyWithImpl<$Res,
        $Val extends RequestOrderAdjustBuffet>
    implements $RequestOrderAdjustBuffetCopyWith<$Res> {
  _$RequestOrderAdjustBuffetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderAdjustBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetCustomerTypes = null,
    Object? saleBillUuid = null,
    Object? buffetUuids = null,
  }) {
    return _then(_value.copyWith(
      buffetCustomerTypes: null == buffetCustomerTypes
          ? _value.buffetCustomerTypes
          : buffetCustomerTypes // ignore: cast_nullable_to_non_nullable
              as List<RequestBuffetCustomerType>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      buffetUuids: null == buffetUuids
          ? _value.buffetUuids
          : buffetUuids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderAdjustBuffetImplCopyWith<$Res>
    implements $RequestOrderAdjustBuffetCopyWith<$Res> {
  factory _$$RequestOrderAdjustBuffetImplCopyWith(
          _$RequestOrderAdjustBuffetImpl value,
          $Res Function(_$RequestOrderAdjustBuffetImpl) then) =
      __$$RequestOrderAdjustBuffetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'buffet_customer_types')
      List<RequestBuffetCustomerType> buffetCustomerTypes,
      @JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'buffet_uuids') List<int> buffetUuids});
}

/// @nodoc
class __$$RequestOrderAdjustBuffetImplCopyWithImpl<$Res>
    extends _$RequestOrderAdjustBuffetCopyWithImpl<$Res,
        _$RequestOrderAdjustBuffetImpl>
    implements _$$RequestOrderAdjustBuffetImplCopyWith<$Res> {
  __$$RequestOrderAdjustBuffetImplCopyWithImpl(
      _$RequestOrderAdjustBuffetImpl _value,
      $Res Function(_$RequestOrderAdjustBuffetImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderAdjustBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetCustomerTypes = null,
    Object? saleBillUuid = null,
    Object? buffetUuids = null,
  }) {
    return _then(_$RequestOrderAdjustBuffetImpl(
      buffetCustomerTypes: null == buffetCustomerTypes
          ? _value._buffetCustomerTypes
          : buffetCustomerTypes // ignore: cast_nullable_to_non_nullable
              as List<RequestBuffetCustomerType>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      buffetUuids: null == buffetUuids
          ? _value._buffetUuids
          : buffetUuids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderAdjustBuffetImpl implements _RequestOrderAdjustBuffet {
  _$RequestOrderAdjustBuffetImpl(
      {@JsonKey(name: 'buffet_customer_types')
      required final List<RequestBuffetCustomerType> buffetCustomerTypes,
      @JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'buffet_uuids') required final List<int> buffetUuids})
      : _buffetCustomerTypes = buffetCustomerTypes,
        _buffetUuids = buffetUuids;

  factory _$RequestOrderAdjustBuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderAdjustBuffetImplFromJson(json);

// 自助餐客户类型列表
  final List<RequestBuffetCustomerType> _buffetCustomerTypes;
// 自助餐客户类型列表
  @override
  @JsonKey(name: 'buffet_customer_types')
  List<RequestBuffetCustomerType> get buffetCustomerTypes {
    if (_buffetCustomerTypes is EqualUnmodifiableListView)
      return _buffetCustomerTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buffetCustomerTypes);
  }

// 销售单UUID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  final int saleBillUuid;
// 自助餐UUID列表
  final List<int> _buffetUuids;
// 自助餐UUID列表
  @override
  @JsonKey(name: 'buffet_uuids')
  List<int> get buffetUuids {
    if (_buffetUuids is EqualUnmodifiableListView) return _buffetUuids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buffetUuids);
  }

  @override
  String toString() {
    return 'RequestOrderAdjustBuffet(buffetCustomerTypes: $buffetCustomerTypes, saleBillUuid: $saleBillUuid, buffetUuids: $buffetUuids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderAdjustBuffetImpl &&
            const DeepCollectionEquality()
                .equals(other._buffetCustomerTypes, _buffetCustomerTypes) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            const DeepCollectionEquality()
                .equals(other._buffetUuids, _buffetUuids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_buffetCustomerTypes),
      saleBillUuid,
      const DeepCollectionEquality().hash(_buffetUuids));

  /// Create a copy of RequestOrderAdjustBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderAdjustBuffetImplCopyWith<_$RequestOrderAdjustBuffetImpl>
      get copyWith => __$$RequestOrderAdjustBuffetImplCopyWithImpl<
          _$RequestOrderAdjustBuffetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderAdjustBuffetImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderAdjustBuffet implements RequestOrderAdjustBuffet {
  factory _RequestOrderAdjustBuffet(
      {@JsonKey(name: 'buffet_customer_types')
      required final List<RequestBuffetCustomerType> buffetCustomerTypes,
      @JsonKey(name: 'sale_bill_uuid') required final int saleBillUuid,
      @JsonKey(name: 'buffet_uuids')
      required final List<int> buffetUuids}) = _$RequestOrderAdjustBuffetImpl;

  factory _RequestOrderAdjustBuffet.fromJson(Map<String, dynamic> json) =
      _$RequestOrderAdjustBuffetImpl.fromJson;

// 自助餐客户类型列表
  @override
  @JsonKey(name: 'buffet_customer_types')
  List<RequestBuffetCustomerType> get buffetCustomerTypes; // 销售单UUID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid; // 自助餐UUID列表
  @override
  @JsonKey(name: 'buffet_uuids')
  List<int> get buffetUuids;

  /// Create a copy of RequestOrderAdjustBuffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderAdjustBuffetImplCopyWith<_$RequestOrderAdjustBuffetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestBuffetCustomerType _$RequestBuffetCustomerTypeFromJson(
    Map<String, dynamic> json) {
  return _RequestBuffetCustomerType.fromJson(json);
}

/// @nodoc
mixin _$RequestBuffetCustomerType {
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'meal_num')
  int get mealNum => throw _privateConstructorUsedError;

  /// Serializes this RequestBuffetCustomerType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestBuffetCustomerTypeCopyWith<RequestBuffetCustomerType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBuffetCustomerTypeCopyWith<$Res> {
  factory $RequestBuffetCustomerTypeCopyWith(RequestBuffetCustomerType value,
          $Res Function(RequestBuffetCustomerType) then) =
      _$RequestBuffetCustomerTypeCopyWithImpl<$Res, RequestBuffetCustomerType>;
  @useResult
  $Res call({int uuid, @JsonKey(name: 'meal_num') int mealNum});
}

/// @nodoc
class _$RequestBuffetCustomerTypeCopyWithImpl<$Res,
        $Val extends RequestBuffetCustomerType>
    implements $RequestBuffetCustomerTypeCopyWith<$Res> {
  _$RequestBuffetCustomerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? mealNum = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestBuffetCustomerTypeImplCopyWith<$Res>
    implements $RequestBuffetCustomerTypeCopyWith<$Res> {
  factory _$$RequestBuffetCustomerTypeImplCopyWith(
          _$RequestBuffetCustomerTypeImpl value,
          $Res Function(_$RequestBuffetCustomerTypeImpl) then) =
      __$$RequestBuffetCustomerTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int uuid, @JsonKey(name: 'meal_num') int mealNum});
}

/// @nodoc
class __$$RequestBuffetCustomerTypeImplCopyWithImpl<$Res>
    extends _$RequestBuffetCustomerTypeCopyWithImpl<$Res,
        _$RequestBuffetCustomerTypeImpl>
    implements _$$RequestBuffetCustomerTypeImplCopyWith<$Res> {
  __$$RequestBuffetCustomerTypeImplCopyWithImpl(
      _$RequestBuffetCustomerTypeImpl _value,
      $Res Function(_$RequestBuffetCustomerTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? mealNum = null,
  }) {
    return _then(_$RequestBuffetCustomerTypeImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestBuffetCustomerTypeImpl implements _RequestBuffetCustomerType {
  _$RequestBuffetCustomerTypeImpl(
      {required this.uuid, @JsonKey(name: 'meal_num') required this.mealNum});

  factory _$RequestBuffetCustomerTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestBuffetCustomerTypeImplFromJson(json);

  @override
  final int uuid;
  @override
  @JsonKey(name: 'meal_num')
  final int mealNum;

  @override
  String toString() {
    return 'RequestBuffetCustomerType(uuid: $uuid, mealNum: $mealNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestBuffetCustomerTypeImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.mealNum, mealNum) || other.mealNum == mealNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, mealNum);

  /// Create a copy of RequestBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestBuffetCustomerTypeImplCopyWith<_$RequestBuffetCustomerTypeImpl>
      get copyWith => __$$RequestBuffetCustomerTypeImplCopyWithImpl<
          _$RequestBuffetCustomerTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestBuffetCustomerTypeImplToJson(
      this,
    );
  }
}

abstract class _RequestBuffetCustomerType implements RequestBuffetCustomerType {
  factory _RequestBuffetCustomerType(
          {required final int uuid,
          @JsonKey(name: 'meal_num') required final int mealNum}) =
      _$RequestBuffetCustomerTypeImpl;

  factory _RequestBuffetCustomerType.fromJson(Map<String, dynamic> json) =
      _$RequestBuffetCustomerTypeImpl.fromJson;

  @override
  int get uuid;
  @override
  @JsonKey(name: 'meal_num')
  int get mealNum;

  /// Create a copy of RequestBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestBuffetCustomerTypeImplCopyWith<_$RequestBuffetCustomerTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
