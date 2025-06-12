// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_product_uuid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReqProductUuid _$ReqProductUuidFromJson(Map<String, dynamic> json) {
  return _ReqProductUuid.fromJson(json);
}

/// @nodoc
mixin _$ReqProductUuid {
  @JsonKey(name: "product_uuid")
  int get productUuid => throw _privateConstructorUsedError;

  /// Serializes this ReqProductUuid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReqProductUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReqProductUuidCopyWith<ReqProductUuid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqProductUuidCopyWith<$Res> {
  factory $ReqProductUuidCopyWith(
          ReqProductUuid value, $Res Function(ReqProductUuid) then) =
      _$ReqProductUuidCopyWithImpl<$Res, ReqProductUuid>;
  @useResult
  $Res call({@JsonKey(name: "product_uuid") int productUuid});
}

/// @nodoc
class _$ReqProductUuidCopyWithImpl<$Res, $Val extends ReqProductUuid>
    implements $ReqProductUuidCopyWith<$Res> {
  _$ReqProductUuidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReqProductUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productUuid = null,
  }) {
    return _then(_value.copyWith(
      productUuid: null == productUuid
          ? _value.productUuid
          : productUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqProductUuidImplCopyWith<$Res>
    implements $ReqProductUuidCopyWith<$Res> {
  factory _$$ReqProductUuidImplCopyWith(_$ReqProductUuidImpl value,
          $Res Function(_$ReqProductUuidImpl) then) =
      __$$ReqProductUuidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "product_uuid") int productUuid});
}

/// @nodoc
class __$$ReqProductUuidImplCopyWithImpl<$Res>
    extends _$ReqProductUuidCopyWithImpl<$Res, _$ReqProductUuidImpl>
    implements _$$ReqProductUuidImplCopyWith<$Res> {
  __$$ReqProductUuidImplCopyWithImpl(
      _$ReqProductUuidImpl _value, $Res Function(_$ReqProductUuidImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReqProductUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productUuid = null,
  }) {
    return _then(_$ReqProductUuidImpl(
      productUuid: null == productUuid
          ? _value.productUuid
          : productUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqProductUuidImpl implements _ReqProductUuid {
  _$ReqProductUuidImpl(
      {@JsonKey(name: "product_uuid") required this.productUuid});

  factory _$ReqProductUuidImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqProductUuidImplFromJson(json);

  @override
  @JsonKey(name: "product_uuid")
  final int productUuid;

  @override
  String toString() {
    return 'ReqProductUuid(productUuid: $productUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqProductUuidImpl &&
            (identical(other.productUuid, productUuid) ||
                other.productUuid == productUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productUuid);

  /// Create a copy of ReqProductUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqProductUuidImplCopyWith<_$ReqProductUuidImpl> get copyWith =>
      __$$ReqProductUuidImplCopyWithImpl<_$ReqProductUuidImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqProductUuidImplToJson(
      this,
    );
  }
}

abstract class _ReqProductUuid implements ReqProductUuid {
  factory _ReqProductUuid(
          {@JsonKey(name: "product_uuid") required final int productUuid}) =
      _$ReqProductUuidImpl;

  factory _ReqProductUuid.fromJson(Map<String, dynamic> json) =
      _$ReqProductUuidImpl.fromJson;

  @override
  @JsonKey(name: "product_uuid")
  int get productUuid;

  /// Create a copy of ReqProductUuid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReqProductUuidImplCopyWith<_$ReqProductUuidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
