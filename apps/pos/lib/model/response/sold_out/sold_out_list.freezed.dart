// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sold_out_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseSoldOutList _$ResponseSoldOutListFromJson(Map<String, dynamic> json) {
  return _ResponseSoldOutList.fromJson(json);
}

/// @nodoc
mixin _$ResponseSoldOutList {
// 商品规格名称
  @JsonKey(name: "locale_product_bom_name")
  LocaleName get localeProductBomName =>
      throw _privateConstructorUsedError; // 商品名称
  @JsonKey(name: "locale_product_name")
  LocaleName get localeProductName =>
      throw _privateConstructorUsedError; // 商品规格Uuid
  @JsonKey(name: "product_bom_uuid")
  int get productBomUuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseSoldOutList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseSoldOutList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseSoldOutListCopyWith<ResponseSoldOutList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSoldOutListCopyWith<$Res> {
  factory $ResponseSoldOutListCopyWith(
          ResponseSoldOutList value, $Res Function(ResponseSoldOutList) then) =
      _$ResponseSoldOutListCopyWithImpl<$Res, ResponseSoldOutList>;
  @useResult
  $Res call(
      {@JsonKey(name: "locale_product_bom_name")
      LocaleName localeProductBomName,
      @JsonKey(name: "locale_product_name") LocaleName localeProductName,
      @JsonKey(name: "product_bom_uuid") int productBomUuid});

  $LocaleNameCopyWith<$Res> get localeProductBomName;
  $LocaleNameCopyWith<$Res> get localeProductName;
}

/// @nodoc
class _$ResponseSoldOutListCopyWithImpl<$Res, $Val extends ResponseSoldOutList>
    implements $ResponseSoldOutListCopyWith<$Res> {
  _$ResponseSoldOutListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseSoldOutList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeProductBomName = null,
    Object? localeProductName = null,
    Object? productBomUuid = null,
  }) {
    return _then(_value.copyWith(
      localeProductBomName: null == localeProductBomName
          ? _value.localeProductBomName
          : localeProductBomName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeProductName: null == localeProductName
          ? _value.localeProductName
          : localeProductName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      productBomUuid: null == productBomUuid
          ? _value.productBomUuid
          : productBomUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ResponseSoldOutList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeProductBomName {
    return $LocaleNameCopyWith<$Res>(_value.localeProductBomName, (value) {
      return _then(_value.copyWith(localeProductBomName: value) as $Val);
    });
  }

  /// Create a copy of ResponseSoldOutList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeProductName {
    return $LocaleNameCopyWith<$Res>(_value.localeProductName, (value) {
      return _then(_value.copyWith(localeProductName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseSoldOutListImplCopyWith<$Res>
    implements $ResponseSoldOutListCopyWith<$Res> {
  factory _$$ResponseSoldOutListImplCopyWith(_$ResponseSoldOutListImpl value,
          $Res Function(_$ResponseSoldOutListImpl) then) =
      __$$ResponseSoldOutListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "locale_product_bom_name")
      LocaleName localeProductBomName,
      @JsonKey(name: "locale_product_name") LocaleName localeProductName,
      @JsonKey(name: "product_bom_uuid") int productBomUuid});

  @override
  $LocaleNameCopyWith<$Res> get localeProductBomName;
  @override
  $LocaleNameCopyWith<$Res> get localeProductName;
}

/// @nodoc
class __$$ResponseSoldOutListImplCopyWithImpl<$Res>
    extends _$ResponseSoldOutListCopyWithImpl<$Res, _$ResponseSoldOutListImpl>
    implements _$$ResponseSoldOutListImplCopyWith<$Res> {
  __$$ResponseSoldOutListImplCopyWithImpl(_$ResponseSoldOutListImpl _value,
      $Res Function(_$ResponseSoldOutListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseSoldOutList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeProductBomName = null,
    Object? localeProductName = null,
    Object? productBomUuid = null,
  }) {
    return _then(_$ResponseSoldOutListImpl(
      localeProductBomName: null == localeProductBomName
          ? _value.localeProductBomName
          : localeProductBomName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeProductName: null == localeProductName
          ? _value.localeProductName
          : localeProductName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      productBomUuid: null == productBomUuid
          ? _value.productBomUuid
          : productBomUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseSoldOutListImpl implements _ResponseSoldOutList {
  const _$ResponseSoldOutListImpl(
      {@JsonKey(name: "locale_product_bom_name")
      required this.localeProductBomName,
      @JsonKey(name: "locale_product_name") required this.localeProductName,
      @JsonKey(name: "product_bom_uuid") required this.productBomUuid});

  factory _$ResponseSoldOutListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseSoldOutListImplFromJson(json);

// 商品规格名称
  @override
  @JsonKey(name: "locale_product_bom_name")
  final LocaleName localeProductBomName;
// 商品名称
  @override
  @JsonKey(name: "locale_product_name")
  final LocaleName localeProductName;
// 商品规格Uuid
  @override
  @JsonKey(name: "product_bom_uuid")
  final int productBomUuid;

  @override
  String toString() {
    return 'ResponseSoldOutList(localeProductBomName: $localeProductBomName, localeProductName: $localeProductName, productBomUuid: $productBomUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSoldOutListImpl &&
            (identical(other.localeProductBomName, localeProductBomName) ||
                other.localeProductBomName == localeProductBomName) &&
            (identical(other.localeProductName, localeProductName) ||
                other.localeProductName == localeProductName) &&
            (identical(other.productBomUuid, productBomUuid) ||
                other.productBomUuid == productBomUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, localeProductBomName, localeProductName, productBomUuid);

  /// Create a copy of ResponseSoldOutList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseSoldOutListImplCopyWith<_$ResponseSoldOutListImpl> get copyWith =>
      __$$ResponseSoldOutListImplCopyWithImpl<_$ResponseSoldOutListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseSoldOutListImplToJson(
      this,
    );
  }
}

abstract class _ResponseSoldOutList implements ResponseSoldOutList {
  const factory _ResponseSoldOutList(
      {@JsonKey(name: "locale_product_bom_name")
      required final LocaleName localeProductBomName,
      @JsonKey(name: "locale_product_name")
      required final LocaleName localeProductName,
      @JsonKey(name: "product_bom_uuid")
      required final int productBomUuid}) = _$ResponseSoldOutListImpl;

  factory _ResponseSoldOutList.fromJson(Map<String, dynamic> json) =
      _$ResponseSoldOutListImpl.fromJson;

// 商品规格名称
  @override
  @JsonKey(name: "locale_product_bom_name")
  LocaleName get localeProductBomName; // 商品名称
  @override
  @JsonKey(name: "locale_product_name")
  LocaleName get localeProductName; // 商品规格Uuid
  @override
  @JsonKey(name: "product_bom_uuid")
  int get productBomUuid;

  /// Create a copy of ResponseSoldOutList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseSoldOutListImplCopyWith<_$ResponseSoldOutListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
