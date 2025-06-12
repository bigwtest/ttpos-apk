// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_band.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReqBand _$ReqBandFromJson(Map<String, dynamic> json) {
  return _ReqBand.fromJson(json);
}

/// @nodoc
mixin _$ReqBand {
  @JsonKey(name: "brand")
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "product_printer_uuid")
  int? get productPrinterUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String? get remark => throw _privateConstructorUsedError;

  /// Serializes this ReqBand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReqBand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReqBandCopyWith<ReqBand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqBandCopyWith<$Res> {
  factory $ReqBandCopyWith(ReqBand value, $Res Function(ReqBand) then) =
      _$ReqBandCopyWithImpl<$Res, ReqBand>;
  @useResult
  $Res call(
      {@JsonKey(name: "brand") String? brand,
      @JsonKey(name: "product_printer_uuid") int? productPrinterUuid,
      @JsonKey(name: "remark") String? remark});
}

/// @nodoc
class _$ReqBandCopyWithImpl<$Res, $Val extends ReqBand>
    implements $ReqBandCopyWith<$Res> {
  _$ReqBandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReqBand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? productPrinterUuid = freezed,
    Object? remark = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrinterUuid: freezed == productPrinterUuid
          ? _value.productPrinterUuid
          : productPrinterUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqBandImplCopyWith<$Res> implements $ReqBandCopyWith<$Res> {
  factory _$$ReqBandImplCopyWith(
          _$ReqBandImpl value, $Res Function(_$ReqBandImpl) then) =
      __$$ReqBandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "brand") String? brand,
      @JsonKey(name: "product_printer_uuid") int? productPrinterUuid,
      @JsonKey(name: "remark") String? remark});
}

/// @nodoc
class __$$ReqBandImplCopyWithImpl<$Res>
    extends _$ReqBandCopyWithImpl<$Res, _$ReqBandImpl>
    implements _$$ReqBandImplCopyWith<$Res> {
  __$$ReqBandImplCopyWithImpl(
      _$ReqBandImpl _value, $Res Function(_$ReqBandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReqBand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? productPrinterUuid = freezed,
    Object? remark = freezed,
  }) {
    return _then(_$ReqBandImpl(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrinterUuid: freezed == productPrinterUuid
          ? _value.productPrinterUuid
          : productPrinterUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqBandImpl implements _ReqBand {
  _$ReqBandImpl(
      {@JsonKey(name: "brand") this.brand,
      @JsonKey(name: "product_printer_uuid") this.productPrinterUuid,
      @JsonKey(name: "remark") this.remark});

  factory _$ReqBandImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqBandImplFromJson(json);

  @override
  @JsonKey(name: "brand")
  final String? brand;
  @override
  @JsonKey(name: "product_printer_uuid")
  final int? productPrinterUuid;
  @override
  @JsonKey(name: "remark")
  final String? remark;

  @override
  String toString() {
    return 'ReqBand(brand: $brand, productPrinterUuid: $productPrinterUuid, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqBandImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.productPrinterUuid, productPrinterUuid) ||
                other.productPrinterUuid == productPrinterUuid) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, brand, productPrinterUuid, remark);

  /// Create a copy of ReqBand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqBandImplCopyWith<_$ReqBandImpl> get copyWith =>
      __$$ReqBandImplCopyWithImpl<_$ReqBandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqBandImplToJson(
      this,
    );
  }
}

abstract class _ReqBand implements ReqBand {
  factory _ReqBand(
      {@JsonKey(name: "brand") final String? brand,
      @JsonKey(name: "product_printer_uuid") final int? productPrinterUuid,
      @JsonKey(name: "remark") final String? remark}) = _$ReqBandImpl;

  factory _ReqBand.fromJson(Map<String, dynamic> json) = _$ReqBandImpl.fromJson;

  @override
  @JsonKey(name: "brand")
  String? get brand;
  @override
  @JsonKey(name: "product_printer_uuid")
  int? get productPrinterUuid;
  @override
  @JsonKey(name: "remark")
  String? get remark;

  /// Create a copy of ReqBand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReqBandImplCopyWith<_$ReqBandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
