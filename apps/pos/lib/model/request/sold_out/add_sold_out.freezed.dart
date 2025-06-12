// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_sold_out.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestAddSoldOut _$RequestAddSoldOutFromJson(Map<String, dynamic> json) {
  return _RequestAddSoldOut.fromJson(json);
}

/// @nodoc
mixin _$RequestAddSoldOut {
// 设置售罄数据
  @JsonKey(name: "sold_out_data")
  List<RequestAddSoldOutItem> get soldOutData =>
      throw _privateConstructorUsedError;

  /// Serializes this RequestAddSoldOut to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestAddSoldOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestAddSoldOutCopyWith<RequestAddSoldOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestAddSoldOutCopyWith<$Res> {
  factory $RequestAddSoldOutCopyWith(
          RequestAddSoldOut value, $Res Function(RequestAddSoldOut) then) =
      _$RequestAddSoldOutCopyWithImpl<$Res, RequestAddSoldOut>;
  @useResult
  $Res call(
      {@JsonKey(name: "sold_out_data")
      List<RequestAddSoldOutItem> soldOutData});
}

/// @nodoc
class _$RequestAddSoldOutCopyWithImpl<$Res, $Val extends RequestAddSoldOut>
    implements $RequestAddSoldOutCopyWith<$Res> {
  _$RequestAddSoldOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestAddSoldOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soldOutData = null,
  }) {
    return _then(_value.copyWith(
      soldOutData: null == soldOutData
          ? _value.soldOutData
          : soldOutData // ignore: cast_nullable_to_non_nullable
              as List<RequestAddSoldOutItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestAddSoldOutImplCopyWith<$Res>
    implements $RequestAddSoldOutCopyWith<$Res> {
  factory _$$RequestAddSoldOutImplCopyWith(_$RequestAddSoldOutImpl value,
          $Res Function(_$RequestAddSoldOutImpl) then) =
      __$$RequestAddSoldOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sold_out_data")
      List<RequestAddSoldOutItem> soldOutData});
}

/// @nodoc
class __$$RequestAddSoldOutImplCopyWithImpl<$Res>
    extends _$RequestAddSoldOutCopyWithImpl<$Res, _$RequestAddSoldOutImpl>
    implements _$$RequestAddSoldOutImplCopyWith<$Res> {
  __$$RequestAddSoldOutImplCopyWithImpl(_$RequestAddSoldOutImpl _value,
      $Res Function(_$RequestAddSoldOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestAddSoldOut
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soldOutData = null,
  }) {
    return _then(_$RequestAddSoldOutImpl(
      soldOutData: null == soldOutData
          ? _value._soldOutData
          : soldOutData // ignore: cast_nullable_to_non_nullable
              as List<RequestAddSoldOutItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestAddSoldOutImpl implements _RequestAddSoldOut {
  const _$RequestAddSoldOutImpl(
      {@JsonKey(name: "sold_out_data")
      required final List<RequestAddSoldOutItem> soldOutData})
      : _soldOutData = soldOutData;

  factory _$RequestAddSoldOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestAddSoldOutImplFromJson(json);

// 设置售罄数据
  final List<RequestAddSoldOutItem> _soldOutData;
// 设置售罄数据
  @override
  @JsonKey(name: "sold_out_data")
  List<RequestAddSoldOutItem> get soldOutData {
    if (_soldOutData is EqualUnmodifiableListView) return _soldOutData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_soldOutData);
  }

  @override
  String toString() {
    return 'RequestAddSoldOut(soldOutData: $soldOutData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestAddSoldOutImpl &&
            const DeepCollectionEquality()
                .equals(other._soldOutData, _soldOutData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_soldOutData));

  /// Create a copy of RequestAddSoldOut
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestAddSoldOutImplCopyWith<_$RequestAddSoldOutImpl> get copyWith =>
      __$$RequestAddSoldOutImplCopyWithImpl<_$RequestAddSoldOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestAddSoldOutImplToJson(
      this,
    );
  }
}

abstract class _RequestAddSoldOut implements RequestAddSoldOut {
  const factory _RequestAddSoldOut(
          {@JsonKey(name: "sold_out_data")
          required final List<RequestAddSoldOutItem> soldOutData}) =
      _$RequestAddSoldOutImpl;

  factory _RequestAddSoldOut.fromJson(Map<String, dynamic> json) =
      _$RequestAddSoldOutImpl.fromJson;

// 设置售罄数据
  @override
  @JsonKey(name: "sold_out_data")
  List<RequestAddSoldOutItem> get soldOutData;

  /// Create a copy of RequestAddSoldOut
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestAddSoldOutImplCopyWith<_$RequestAddSoldOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestAddSoldOutItem _$RequestAddSoldOutItemFromJson(
    Map<String, dynamic> json) {
  return _RequestAddSoldOutItem.fromJson(json);
}

/// @nodoc
mixin _$RequestAddSoldOutItem {
// 是否售罄：true-是；false-否
  @JsonKey(name: "is_sold_out")
  bool get isSoldOut => throw _privateConstructorUsedError; // 商品规格Uuid
  @JsonKey(name: "product_bom_uuid")
  int get productBomUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestAddSoldOutItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestAddSoldOutItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestAddSoldOutItemCopyWith<RequestAddSoldOutItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestAddSoldOutItemCopyWith<$Res> {
  factory $RequestAddSoldOutItemCopyWith(RequestAddSoldOutItem value,
          $Res Function(RequestAddSoldOutItem) then) =
      _$RequestAddSoldOutItemCopyWithImpl<$Res, RequestAddSoldOutItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_sold_out") bool isSoldOut,
      @JsonKey(name: "product_bom_uuid") int productBomUuid});
}

/// @nodoc
class _$RequestAddSoldOutItemCopyWithImpl<$Res,
        $Val extends RequestAddSoldOutItem>
    implements $RequestAddSoldOutItemCopyWith<$Res> {
  _$RequestAddSoldOutItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestAddSoldOutItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSoldOut = null,
    Object? productBomUuid = null,
  }) {
    return _then(_value.copyWith(
      isSoldOut: null == isSoldOut
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      productBomUuid: null == productBomUuid
          ? _value.productBomUuid
          : productBomUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestAddSoldOutItemImplCopyWith<$Res>
    implements $RequestAddSoldOutItemCopyWith<$Res> {
  factory _$$RequestAddSoldOutItemImplCopyWith(
          _$RequestAddSoldOutItemImpl value,
          $Res Function(_$RequestAddSoldOutItemImpl) then) =
      __$$RequestAddSoldOutItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_sold_out") bool isSoldOut,
      @JsonKey(name: "product_bom_uuid") int productBomUuid});
}

/// @nodoc
class __$$RequestAddSoldOutItemImplCopyWithImpl<$Res>
    extends _$RequestAddSoldOutItemCopyWithImpl<$Res,
        _$RequestAddSoldOutItemImpl>
    implements _$$RequestAddSoldOutItemImplCopyWith<$Res> {
  __$$RequestAddSoldOutItemImplCopyWithImpl(_$RequestAddSoldOutItemImpl _value,
      $Res Function(_$RequestAddSoldOutItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestAddSoldOutItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSoldOut = null,
    Object? productBomUuid = null,
  }) {
    return _then(_$RequestAddSoldOutItemImpl(
      isSoldOut: null == isSoldOut
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool,
      productBomUuid: null == productBomUuid
          ? _value.productBomUuid
          : productBomUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestAddSoldOutItemImpl implements _RequestAddSoldOutItem {
  const _$RequestAddSoldOutItemImpl(
      {@JsonKey(name: "is_sold_out") required this.isSoldOut,
      @JsonKey(name: "product_bom_uuid") required this.productBomUuid});

  factory _$RequestAddSoldOutItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestAddSoldOutItemImplFromJson(json);

// 是否售罄：true-是；false-否
  @override
  @JsonKey(name: "is_sold_out")
  final bool isSoldOut;
// 商品规格Uuid
  @override
  @JsonKey(name: "product_bom_uuid")
  final int productBomUuid;

  @override
  String toString() {
    return 'RequestAddSoldOutItem(isSoldOut: $isSoldOut, productBomUuid: $productBomUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestAddSoldOutItemImpl &&
            (identical(other.isSoldOut, isSoldOut) ||
                other.isSoldOut == isSoldOut) &&
            (identical(other.productBomUuid, productBomUuid) ||
                other.productBomUuid == productBomUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSoldOut, productBomUuid);

  /// Create a copy of RequestAddSoldOutItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestAddSoldOutItemImplCopyWith<_$RequestAddSoldOutItemImpl>
      get copyWith => __$$RequestAddSoldOutItemImplCopyWithImpl<
          _$RequestAddSoldOutItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestAddSoldOutItemImplToJson(
      this,
    );
  }
}

abstract class _RequestAddSoldOutItem implements RequestAddSoldOutItem {
  const factory _RequestAddSoldOutItem(
      {@JsonKey(name: "is_sold_out") required final bool isSoldOut,
      @JsonKey(name: "product_bom_uuid")
      required final int productBomUuid}) = _$RequestAddSoldOutItemImpl;

  factory _RequestAddSoldOutItem.fromJson(Map<String, dynamic> json) =
      _$RequestAddSoldOutItemImpl.fromJson;

// 是否售罄：true-是；false-否
  @override
  @JsonKey(name: "is_sold_out")
  bool get isSoldOut; // 商品规格Uuid
  @override
  @JsonKey(name: "product_bom_uuid")
  int get productBomUuid;

  /// Create a copy of RequestAddSoldOutItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestAddSoldOutItemImplCopyWith<_$RequestAddSoldOutItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
