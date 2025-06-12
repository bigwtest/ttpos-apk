// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Income _$IncomeFromJson(Map<String, dynamic> json) {
  return _Income.fromJson(json);
}

/// @nodoc
mixin _$Income {
  @JsonKey(name: "pay_type_name")
  String? get payTypeName => throw _privateConstructorUsedError;
  @SafetyNumberConverter()
  SafetyNumber? get price => throw _privateConstructorUsedError;

  /// Serializes this Income to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncomeCopyWith<Income> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeCopyWith<$Res> {
  factory $IncomeCopyWith(Income value, $Res Function(Income) then) =
      _$IncomeCopyWithImpl<$Res, Income>;
  @useResult
  $Res call(
      {@JsonKey(name: "pay_type_name") String? payTypeName,
      @SafetyNumberConverter() SafetyNumber? price});

  $SafetyNumberCopyWith<$Res>? get price;
}

/// @nodoc
class _$IncomeCopyWithImpl<$Res, $Val extends Income>
    implements $IncomeCopyWith<$Res> {
  _$IncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payTypeName = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      payTypeName: freezed == payTypeName
          ? _value.payTypeName
          : payTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
    ) as $Val);
  }

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $SafetyNumberCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IncomeImplCopyWith<$Res> implements $IncomeCopyWith<$Res> {
  factory _$$IncomeImplCopyWith(
          _$IncomeImpl value, $Res Function(_$IncomeImpl) then) =
      __$$IncomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pay_type_name") String? payTypeName,
      @SafetyNumberConverter() SafetyNumber? price});

  @override
  $SafetyNumberCopyWith<$Res>? get price;
}

/// @nodoc
class __$$IncomeImplCopyWithImpl<$Res>
    extends _$IncomeCopyWithImpl<$Res, _$IncomeImpl>
    implements _$$IncomeImplCopyWith<$Res> {
  __$$IncomeImplCopyWithImpl(
      _$IncomeImpl _value, $Res Function(_$IncomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payTypeName = freezed,
    Object? price = freezed,
  }) {
    return _then(_$IncomeImpl(
      payTypeName: freezed == payTypeName
          ? _value.payTypeName
          : payTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncomeImpl implements _Income {
  const _$IncomeImpl(
      {@JsonKey(name: "pay_type_name") this.payTypeName,
      @SafetyNumberConverter() this.price});

  factory _$IncomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncomeImplFromJson(json);

  @override
  @JsonKey(name: "pay_type_name")
  final String? payTypeName;
  @override
  @SafetyNumberConverter()
  final SafetyNumber? price;

  @override
  String toString() {
    return 'Income(payTypeName: $payTypeName, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeImpl &&
            (identical(other.payTypeName, payTypeName) ||
                other.payTypeName == payTypeName) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, payTypeName, price);

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeImplCopyWith<_$IncomeImpl> get copyWith =>
      __$$IncomeImplCopyWithImpl<_$IncomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncomeImplToJson(
      this,
    );
  }
}

abstract class _Income implements Income {
  const factory _Income(
      {@JsonKey(name: "pay_type_name") final String? payTypeName,
      @SafetyNumberConverter() final SafetyNumber? price}) = _$IncomeImpl;

  factory _Income.fromJson(Map<String, dynamic> json) = _$IncomeImpl.fromJson;

  @override
  @JsonKey(name: "pay_type_name")
  String? get payTypeName;
  @override
  @SafetyNumberConverter()
  SafetyNumber? get price;

  /// Create a copy of Income
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncomeImplCopyWith<_$IncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
